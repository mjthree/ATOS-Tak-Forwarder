import threading
import time
import json
import socket
import xml.etree.ElementTree as ET
from datetime import datetime, timedelta, timezone
from flask import Flask, render_template, jsonify, request
import serial
import struct

app = Flask(__name__)

tag_state = {}  # tag_id -> tag data dict
forward_all = False

tak_server_config = {
    'ip': '192.168.200.11',
    'port': 8087
}

SERIAL_PORT = 'COM4'
SERIAL_BAUD = 115200

# ATOS color enum values
ATOS_COLORS = [
    'White', 'Yellow', 'Orange', 'Magenta', 'Red', 'Maroon', 
    'Purple', 'Blue', 'Cyan', 'Teal', 'Green', 'Dark_Green'
]

UNKNOWN_COORD = 9999999.0

def extract_packets_from_buffer(buffer):
    """Extract complete packets from buffer using 7e7e...7f markers"""
    packets = []
    i = 0
    while i < len(buffer) - 3:
        if buffer[i] == 0x7e and buffer[i+1] == 0x7e:
            for j in range(i+2, len(buffer)):
                if buffer[j] == 0x7f:
                    packet = buffer[i+2:j]
                    packets.append(packet)
                    i = j
                    break
            else:
                break
        i += 1
    remaining = buffer[i:] if i < len(buffer) else b''
    return packets, remaining

def is_bad_gps(lat, lon, alt, is_fresh):
    """Check if GPS data is bad using the fresh bit and coordinate validation"""
    if not is_fresh:
        return True
    if lat == UNKNOWN_COORD or lon == UNKNOWN_COORD:
        return True
    if not (-90 <= lat <= 90) or not (-180 <= lon <= 180):
        return True
    if lat == 0.0 and lon == 0.0:
        return True
    if abs(alt) > 20000 or alt == 0:
        return True
    return False

def parse_fourty_packet(pkt):
    """Parse FOURTY packet with offset and fresh bit logic"""
    if len(pkt) < 20:
        return None
    try:
        ptype = pkt[0]
        parser = pkt[1]
        body = pkt[2:]
        pdop = (body[0] & 0x3F) * (1.0/3.0) + 1.0
        tag_id = ((body[0] & 0xFC) >> 6) | (body[1] << 2)
        lat_int = struct.unpack('<i', body[2:6])[0]
        lon_int = struct.unpack('<i', body[6:10])[0]
        is_fresh = ((lat_int >> 30) & 1) == 1
        latitude = (lat_int / 1e7) - 107.3743
        longitude = lon_int / 1e7
        print(f"[DEBUG] Raw lat_int: {lat_int}, lon_int: {lon_int}, is_fresh: {is_fresh}")
        print(f"[DEBUG] Calculated lat: {latitude}, lon: {longitude}")
        if not is_fresh:
            latitude = UNKNOWN_COORD
            longitude = UNKNOWN_COORD
        altitude = struct.unpack('<H', body[10:12])[0] - 100
        b12, b13, b14, b15 = body[12:16]
        val1 = ((b15 & 0xff) << 24) | ((b14 & 0xff) << 16)
        vel_e_raw = ((b14 & 0xff) << 8) | (b13 & 0xff)
        vel_n_raw = ((b13 & 0xff) << 8) | (b12 & 0xff)
        vel_n = (vel_n_raw & 0x3FF)
        vel_e = ((vel_e_raw >> 2) & 0x3FF)
        vel_d = (val1 >> 20) & 0x1FF
        if (val1 >> 29) & 1:
            vel_d = ((vel_d & 0x1FF) | -0x200)
        if (vel_n >> 9) & 1:
            vel_n = ((vel_n & 0x1FF) | -0x200)
        if (vel_e >> 9) & 1:
            vel_e = ((vel_e & 0x1FF) | -0x200)
        battery_voltage = body[16] * 0.01 + 1.8
        temperature = body[17]
        status = body[18]
        wire_status = status & 0x3
        object_status = (status & 0x4) >> 2
        emergency = (status & 0x8) >> 3
        bad_gps = is_bad_gps(latitude, longitude, altitude, is_fresh)
        return {
            'type': 'FOURTY',
            'tag_id': tag_id,
            'latitude': round(latitude, 6),
            'longitude': round(longitude, 6),
            'altitude': altitude,  # Raw altitude in meters
            'altitude_ft': round(altitude * 3.28084, 1),  # Convert to feet
            'battery_voltage': round(battery_voltage, 2),
            'temperature': temperature,
            'pdop': round(pdop, 2),
            'vel_n': vel_n,
            'vel_e': vel_e,
            'vel_d': vel_d,
            'wire_status': wire_status,
            'object_status': object_status,
            'emergency': emergency,
            'is_fresh': is_fresh,
            'bad_gps': bad_gps,
            'timestamp': datetime.now().strftime('%H:%M:%S.%f')[:-3]
        }
    except Exception as e:
        print(f"Error parsing FOURTY packet: {e}")
        return None

def serial_reader():
    global tag_state
    while True:
        ser = None
        try:
            print(f"Attempting to connect to {SERIAL_PORT} at {SERIAL_BAUD} baud...")
            ser = serial.Serial(SERIAL_PORT, SERIAL_BAUD, timeout=0.1)
            ser.setDTR(True)
            ser.setRTS(True)
            ser.flushInput()
            ser.flushOutput()
            print(f"✅ Connected to {SERIAL_PORT}")
            buffer = b''
            
            while True:
                if ser.in_waiting > 0:
                    data = ser.read(ser.in_waiting)
                    buffer += data
                    
                    # Extract complete packets
                    packets = []
                    while len(buffer) >= 28:
                        packet = buffer[:28]
                        buffer = buffer[28:]
                        
                        # Check packet header
                        if packet[0] == 0xAA and packet[1] == 0x55:
                            packets.append(packet)
                    
                    # Process packets
                    for packet in packets:
                        try:
                            # Parse packet
                            tag_id = packet[2]
                            lat_int = int.from_bytes(packet[3:7], byteorder='little', signed=True)
                            lon_int = int.from_bytes(packet[7:11], byteorder='little', signed=True)
                            alt_int = int.from_bytes(packet[11:13], byteorder='little', signed=False)
                            voltage_int = int.from_bytes(packet[13:15], byteorder='little', signed=False)
                            is_fresh = bool(packet[15] & 0x01)
                            
                            # Convert coordinates
                            lat = lat_int / 10000000.0
                            lon = lon_int / 10000000.0
                            altitude = alt_int * 0.1  # Convert to meters
                            altitude_ft = altitude * 3.28084
                            voltage = voltage_int * 0.01
                            
                            # Check for bad GPS
                            bad_gps = not is_fresh or lat == 0 or lon == 0
                            
                            # Update tag state with live serial data
                            now = time.time()
                            if tag_id not in tag_state:
                                tag_state[tag_id] = {
                                    'forward': False,
                                    'color': 'White',
                                    'callsign': f'Tag_{tag_id}',
                                    'last_seen': 0,
                                    'stale': True,
                                    'cots_sent': 0
                                }
                            
                            # Update with live serial data (this takes precedence over log data)
                            tag_state[tag_id].update({
                                'latitude': lat,
                                'longitude': lon,
                                'altitude': altitude,  # Raw altitude in meters
                                'altitude_ft': altitude_ft,
                                'battery_voltage': voltage,
                                'temperature': 0,  # Not available in serial data
                                'timestamp': now,
                                'stale': False,  # Live data is never stale
                                'bad_gps': bad_gps,
                                'last_seen': now  # Mark as seen via serial
                            })
                            
                            print(f"[SERIAL] Tag {tag_id}: {lat:.6f}, {lon:.6f}, {altitude_ft:.1f}ft, {voltage:.2f}V")
                            print(f"[DEBUG] Tag {tag_id} state: forward={tag_state[tag_id].get('forward', False)}, stale={tag_state[tag_id].get('stale', True)}")
                            
                        except Exception as e:
                            print(f"Error parsing packet: {e}")
                            continue
                else:
                    # Only print debug message occasionally to reduce spam
                    if time.time() % 30 < 0.1:  # Print once every ~30 seconds instead of 10
                        print(f"[DEBUG] No data available, in_waiting: {ser.in_waiting}")
                    time.sleep(0.01)
                    
        except serial.SerialException as e:
            print(f"Serial error: {e}")
            if ser:
                ser.close()
            time.sleep(5)
        except Exception as e:
            print(f"Unexpected error in serial reader: {e}")
            if ser:
                ser.close()
            time.sleep(5)

def load_tag_data():
    """Load tag data from the comprehensive logs - only for tags not already in tag_state"""
    global tag_state
    try:
        # Find the most recent log file
        import glob
        import os
        log_files = glob.glob('comprehensive_logs/all_tag_updates_*.jsonl')
        if not log_files:
            print("No log files found")
            return
        
        latest_file = max(log_files, key=os.path.getctime)
        print(f"Loading from: {latest_file}")
        
        loaded_count = 0
        with open(latest_file, 'r') as f:
            for line in f:
                try:
                    data = json.loads(line.strip())
                    tag_id = data.get('tag_id')
                    if not tag_id:
                        continue
                    
                    # Only load if tag doesn't exist OR has never been seen via serial
                    if tag_id not in tag_state or tag_state[tag_id].get('last_seen', 0) == 0:
                        # Initialize tag with log data
                        altitude_ft = data.get('altitude_ft')
                        altitude = data.get('altitude')  # Raw altitude in meters
                        if altitude is None and altitude_ft is not None:
                            # Calculate raw altitude from feet if not available
                            altitude = altitude_ft / 3.28084
                        
                        tag_state[tag_id] = {
                            'latitude': data.get('latitude'),
                            'longitude': data.get('longitude'),
                            'altitude': altitude,  # Raw altitude in meters
                            'altitude_ft': altitude_ft,
                            'battery_voltage': data.get('battery_voltage'),
                            'temperature': data.get('temperature', 0),
                            'timestamp': data.get('timestamp'),
                            'stale': data.get('stale', True),  # Default to stale for log data
                            'forward': False,  # Default to not forwarded
                            'color': 'White',
                            'callsign': f'Tag_{tag_id}',
                            'bad_gps': data.get('bad_gps', False),
                            'last_seen': 0,  # Mark as never seen via serial
                            'cots_sent': 0
                        }
                        loaded_count += 1
                        print(f"Loaded tag {tag_id} from log")
                except json.JSONDecodeError:
                    continue
        
        print(f"Loaded {loaded_count} tags from log file")
        
    except Exception as e:
        print(f"Error loading tag data: {e}")

def create_cot_xml(tag_id, tag_data):
    """Create COT XML for a tag, matching the format from atos_tak_client_udp.py"""
    # Extract and format fields
    lat = f"{tag_data.get('latitude', 0):.7f}"
    lon = f"{tag_data.get('longitude', 0):.7f}"
    hae = f"{tag_data.get('altitude', 0):.3f}"
    battery = f"{tag_data.get('battery_voltage', 0):.2f}"
    temp = f"{tag_data.get('temperature', 0):.0f}"
    callsign = tag_data.get('callsign', f'Tag_{tag_id}')
    color = tag_data.get('color', 'White')
    
    # Use the same time for all fields (simulate real device)
    now = datetime.now(timezone.utc)
    time_str = now.strftime('%Y-%m-%dT%H:%M:%S.%f')[:-3] + 'Z'
    stale_str = (now.replace(microsecond=0) + timedelta(minutes=5)).strftime('%Y-%m-%dT%H:%M:%S.000Z')
    
    # Fixed UUID and link UID/parent callsign (matching atos_tak_client_udp.py)
    fixed_uuid = "60eabd39-32ed-436f-9a17-4a8add4d24fc"
    link_uid = "ANDROID-3e844b3d264f49fb"
    parent_callsign = "Atos Tablet"
    
    # Create COT XML matching the exact format from atos_tak_client_udp.py
    cot_xml = f'''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<event version="2.0" uid="atos-{tag_id}-{fixed_uuid}" type="a-f-G-U-C-I" time="{time_str}" start="{time_str}" stale="{stale_str}" how="m-g" access="Undefined">
  <point lat="{lat}" lon="{lon}" hae="{hae}" ce="1.3" le="2.0"/>
  <detail>
    <track vspeed="0.0" course="0.0" slope="0.0" speed="0.0"/>
    <link uid="{link_uid}" type="a-f-G-U-C-I" parent_callsign="{parent_callsign}" relation="p-p"/>
    <contact callsign="{callsign}"/>
    <__atos color="{color}" tag_type="Personnel" manifest="Default Manifest" attributes="" PAX_Type="" Team_Frequency="" Special_Equipment="" Frequency="" Remark="" temp_c="{temp}" voltage="{battery}"/>
    <archive/>
  </detail>
</event>'''
    
    return cot_xml

def send_cot(cot_xml, ip, port):
    """Send COT XML via UDP"""
    try:
        sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        sock.sendto(cot_xml.encode('utf-8'), (ip, port))
        sock.close()
        return True
    except Exception as e:
        print(f"Error sending COT: {e}")
        return False

# Background COT sender thread
def cot_sender():
    while True:
        try:
            now = time.time()
            for tag_id, tag_data in tag_state.items():
                # Check if tag has been seen recently (within 15 seconds)
                last_seen = tag_data.get('last_seen', 0)
                is_recent = (now - last_seen) < 15
                
                # Update stale status based on recent serial data
                tag_data['stale'] = not is_recent
                
                # Debug: Print tag conditions
                is_not_stale = is_recent
                is_forwarded = forward_all or tag_data.get('forward', False)
                has_position = tag_data.get('latitude') is not None and tag_data.get('longitude') is not None
                has_valid_coords = (tag_data.get('latitude') != UNKNOWN_COORD and 
                                  tag_data.get('longitude') != UNKNOWN_COORD)
                
                # Only send COTs for active and forwarded tags with recent serial data
                if (is_not_stale and  # Seen within 15 seconds
                    is_forwarded and  # Forward enabled
                    has_position and  # Has position
                    has_valid_coords):  # Valid coordinates
                    
                    print(f"[COT DEBUG] Tag {tag_id}: stale={tag_data.get('stale')}, forward={tag_data.get('forward')}, forward_all={forward_all}, has_pos={has_position}")
                    
                    cot_xml = create_cot_xml(tag_id, tag_data)
                    if cot_xml:
                        try:
                            sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
                            sock.sendto(cot_xml.encode('utf-8'), (tak_server_config['ip'], tak_server_config['port']))
                            sock.close()
                            print(f"Sent COT for tag {tag_id}")
                            print(f"COT XML: {cot_xml}")
                            tag_data['cots_sent'] = tag_data.get('cots_sent', 0) + 1
                        except Exception as e:
                            print(f"Error sending COT for tag {tag_id}: {e}")
                else:
                    # Debug why tag was skipped
                    reasons = []
                    if not is_not_stale:
                        reasons.append("stale")
                    if not is_forwarded:
                        reasons.append("not_forwarded")
                    if not has_position:
                        reasons.append("no_position")
                    if not has_valid_coords:
                        reasons.append("invalid_coords")
                    
                    if reasons:
                        print(f"[COT DEBUG] Tag {tag_id} skipped: {', '.join(reasons)}")
            
            time.sleep(4)  # Send COTs every 4 seconds
            
        except Exception as e:
            print(f"Error in COT sender: {e}")
            time.sleep(5)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/api/data')
def get_data():
    """Return data in the format expected by the simplified dashboard"""
    now = time.time()
    tags_out = {}
    for tag_id, tag in tag_state.items():
        tag_out = tag.copy()
        # Active = seen within last 15 seconds via serial
        last_seen = tag.get('last_seen', 0)
        tag_out['active'] = (now - last_seen) < 15
        tag_out['stale'] = not tag_out['active']
        tags_out[tag_id] = tag_out
    
    return jsonify({
        'tags': tags_out,
        'stats': {
            'total_packets': 0,  # Not tracking this in web forwarder
            'last_update': datetime.now().isoformat(),
            'connected': True,  # Assume connected if we have data
            'error': None
        },
        'history': []  # Not tracking history in web forwarder
    })

@app.route('/api/tags')
def get_tags():
    # Return tag state with active, bad_gps, and last_seen for dashboard
    now = time.time()
    tags_out = {}
    for tag_id, tag in tag_state.items():
        tag_out = tag.copy()
        # Active = seen within last 15 seconds via serial
        last_seen = tag.get('last_seen', 0)
        tag_out['active'] = (now - last_seen) < 15
        tag_out['bad_gps'] = tag.get('bad_gps', False)
        tag_out['last_seen'] = last_seen
        tag_out['forward'] = tag.get('forward', False)
        tag_out['color'] = tag.get('color', 'White')
        tag_out['callsign'] = tag.get('callsign', f'Tag_{tag_id}')
        # Ensure stale status is correct
        tag_out['stale'] = not tag_out['active']
        tags_out[tag_id] = tag_out
    return jsonify(tags_out)

@app.route('/api/tag/<tag_id>/forward', methods=['POST'])
def set_tag_forward(tag_id):
    if tag_id in tag_state:
        tag_state[tag_id]['forward'] = request.json.get('forward', False)
    return jsonify({'success': True})

@app.route('/api/tag/<tag_id>/color', methods=['POST'])
def set_tag_color(tag_id):
    if tag_id in tag_state:
        color = request.json.get('color', 'White')
        if color in ATOS_COLORS:
            tag_state[tag_id]['color'] = color
    return jsonify({'success': True})

@app.route('/api/tag/<tag_id>/callsign', methods=['POST'])
def set_tag_callsign(tag_id):
    if tag_id in tag_state:
        tag_state[tag_id]['callsign'] = request.json.get('callsign', f'Tag_{tag_id}')
    return jsonify({'success': True})

@app.route('/api/forward_all', methods=['GET', 'POST'])
def forward_all_toggle():
    global forward_all
    if request.method == 'POST':
        forward_all = request.json.get('forward_all', False)
    return jsonify({'forward_all': forward_all})

@app.route('/api/tak_server', methods=['GET', 'POST'])
def tak_server_config_api():
    global tak_server_config
    if request.method == 'POST':
        data = request.json
        if 'ip' in data:
            tak_server_config['ip'] = data['ip']
        if 'port' in data:
            tak_server_config['port'] = int(data['port'])
    return jsonify(tak_server_config)

@app.route('/api/reload_tags', methods=['POST'])
def reload_tags():
    """Reload tag data from log files"""
    load_tag_data()
    return jsonify({'success': True, 'tag_count': len(tag_state)})

if __name__ == '__main__':
    # Load initial tag data
    load_tag_data()
    
    # Start COT sender thread
    threading.Thread(target=cot_sender, daemon=True).start()
    
    # Start serial reader thread
    threading.Thread(target=serial_reader, daemon=True).start()
    
    print(f"Web forwarder starting on http://localhost:5000")
    print(f"Loaded {len(tag_state)} tags")
    print(f"TAK server: {tak_server_config['ip']}:{tak_server_config['port']}")
    
    app.run(debug=False, host='0.0.0.0', port=5000, use_reloader=False) 