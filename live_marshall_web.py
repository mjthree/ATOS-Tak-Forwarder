#!/usr/bin/env python3
"""
Live Marshall Web Parser
Web interface for real-time Marshall/ATOS packet monitoring with comprehensive logging
"""
import serial
import struct
import time
import json
import threading
import ctypes
from datetime import datetime
from flask import Flask, render_template, jsonify
import webbrowser
import os
import traceback
from pathlib import Path
import signal
import sys

app = Flask(__name__)

# Global data storage
tag_data = {}  # Store latest data for each tag
packet_history = []  # Recent packet history
stats = {
    'total_packets': 0,
    'last_update': None,
    'connected': False,
    'error': None
}

UNKNOWN_COORD = 9999999.0

JSON_EXPORT_PATH = 'latest_tag_data.json'

# Create logging directories
LOGS_DIR = Path("comprehensive_logs")
LOGS_DIR.mkdir(exist_ok=True)

# Logging files
timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
COMPREHENSIVE_LOG_FILE = LOGS_DIR / f"all_tag_updates_{timestamp}.jsonl"
VOLTAGE_LOG_FILE = LOGS_DIR / f"voltage_tracking_{timestamp}.csv"
TAG_STATUS_LOG_FILE = LOGS_DIR / f"tag_status_{timestamp}.jsonl"

def log_tag_update(tag_data_entry):
    """Log every tag update to comprehensive log file"""
    try:
        with open(COMPREHENSIVE_LOG_FILE, 'a') as f:
            # Add full timestamp for logging
            log_entry = {
                'full_timestamp': datetime.now().isoformat(),
                'tag_id': tag_data_entry['tag_id'],
                'battery_voltage': tag_data_entry['battery_voltage'],
                'latitude': tag_data_entry['latitude'],
                'longitude': tag_data_entry['longitude'],
                'altitude_ft': tag_data_entry['altitude_ft'],
                'bad_gps': tag_data_entry['bad_gps'],
                'is_fresh': tag_data_entry['is_fresh'],
                'temperature': tag_data_entry['temperature'],
                'pdop': tag_data_entry['pdop'],
                'wire_status': tag_data_entry['wire_status'],
                'object_status': tag_data_entry['object_status'],
                'emergency': tag_data_entry['emergency']
            }
            f.write(json.dumps(log_entry) + '\n')
    except Exception as e:
        print(f"Error logging tag update: {e}")

def log_voltage_tracking(tag_id, voltage, timestamp_str):
    """Log voltage data to CSV for easy analysis"""
    try:
        with open(VOLTAGE_LOG_FILE, 'a') as f:
            f.write(f"{timestamp_str},{tag_id},{voltage}\n")
    except Exception as e:
        print(f"Error logging voltage: {e}")

def log_tag_status_change(tag_id, old_data, new_data):
    """Log when tag status changes (GPS fix, voltage threshold, etc.)"""
    try:
        if old_data is None:
            # First time seeing this tag
            status_entry = {
                'timestamp': datetime.now().isoformat(),
                'tag_id': tag_id,
                'event': 'tag_first_seen',
                'voltage': new_data['battery_voltage'],
                'gps_status': 'good' if not new_data['bad_gps'] else 'bad'
            }
        else:
            # Check for significant changes
            voltage_diff = abs(new_data['battery_voltage'] - old_data['battery_voltage'])
            gps_changed = old_data['bad_gps'] != new_data['bad_gps']
            
            if voltage_diff >= 0.1:  # Voltage changed by 0.1V or more
                status_entry = {
                    'timestamp': datetime.now().isoformat(),
                    'tag_id': tag_id,
                    'event': 'voltage_change',
                    'old_voltage': old_data['battery_voltage'],
                    'new_voltage': new_data['battery_voltage'],
                    'voltage_diff': round(voltage_diff, 2)
                }
            elif gps_changed:
                status_entry = {
                    'timestamp': datetime.now().isoformat(),
                    'tag_id': tag_id,
                    'event': 'gps_status_change',
                    'old_gps': 'good' if not old_data['bad_gps'] else 'bad',
                    'new_gps': 'good' if not new_data['bad_gps'] else 'bad',
                    'voltage': new_data['battery_voltage']
                }
            else:
                return  # No significant change to log
        
        with open(TAG_STATUS_LOG_FILE, 'a') as f:
            f.write(json.dumps(status_entry) + '\n')
    except Exception as e:
        print(f"Error logging status change: {e}")

def initialize_log_files():
    """Initialize log files with headers"""
    try:
        # Initialize voltage tracking CSV with header
        with open(VOLTAGE_LOG_FILE, 'w') as f:
            f.write("timestamp,tag_id,voltage\n")
        
        # Create a summary file
        summary_file = LOGS_DIR / f"logging_summary_{timestamp}.txt"
        with open(summary_file, 'w') as f:
            f.write(f"Comprehensive Tag Logging Started: {datetime.now()}\n")
            f.write(f"Log Files Created:\n")
            f.write(f"  - All updates: {COMPREHENSIVE_LOG_FILE}\n")
            f.write(f"  - Voltage tracking: {VOLTAGE_LOG_FILE}\n")
            f.write(f"  - Status changes: {TAG_STATUS_LOG_FILE}\n")
            f.write(f"  - Summary: {summary_file}\n")
            f.write(f"\nPurpose: Overnight voltage threshold testing\n")
            f.write(f"Monitoring: All tag updates with timestamps\n")
            f.write(f"Voltage tracking: Every voltage reading per tag\n")
            f.write(f"Status changes: GPS changes, voltage drops >= 0.1V\n")
        
        print(f"📝 Logging initialized:")
        print(f"   📊 All updates: {COMPREHENSIVE_LOG_FILE}")
        print(f"   🔋 Voltage tracking: {VOLTAGE_LOG_FILE}")
        print(f"   📈 Status changes: {TAG_STATUS_LOG_FILE}")
        
    except Exception as e:
        print(f"Error initializing log files: {e}")

def is_bad_gps(lat, lon, alt, is_fresh):
    """Check if GPS data is bad using the fresh bit and coordinate validation"""
    # If GPS is not fresh, it's definitely bad
    if not is_fresh:
        return True
    
    # Check for unknown coordinates
    if lat == UNKNOWN_COORD or lon == UNKNOWN_COORD:
        return True
    
    # Check coordinate ranges
    if not (-90 <= lat <= 90) or not (-180 <= lon <= 180):
        return True
    
    # Check for zero coordinates (common bad GPS indicator)
    if lat == 0.0 and lon == 0.0:
        return True
    
    # Check altitude range
    if abs(alt) > 20000 or alt == 0:
        return True
    
    return False

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
        # Latitude with offset and fresh bit
        lat_int = struct.unpack('<i', body[2:6])[0]
        lon_int = struct.unpack('<i', body[6:10])[0]
        is_fresh = ((lat_int >> 30) & 1) == 1
        latitude = (lat_int / 1e7) - 107.3743
        longitude = lon_int / 1e7
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
            'altitude': altitude,
            'altitude_ft': round(altitude * 3.28084, 1),
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
            'timestamp': datetime.now().strftime('%H:%M:%S.%f')[:-3],
            'timestamp_epoch': time.time()
        }
    except Exception as e:
        print(f"Error parsing FOURTY packet: {e}")
        return None

def parse_fiftysix_packet(pkt):
    """Parse FIFTYSIX packet"""
    if len(pkt) < 3:
        return None
    
    try:
        battery_percent = pkt[2]
        return {
            'type': 'FIFTYSIX',
            'battery_percent': battery_percent,
            'timestamp': datetime.now().strftime('%H:%M:%S.%f')[:-3],
            'timestamp_epoch': time.time()
        }
    except Exception as e:
        print(f"Error parsing FIFTYSIX packet: {e}")
        return None

def get_tag_staleness(tag, threshold_seconds=15):
    """Determine if tag data is older than threshold_seconds."""
    try:
        if 'timestamp_epoch' in tag:
            age = time.time() - float(tag['timestamp_epoch'])
            return age > threshold_seconds
        today = datetime.now().date()
        if 'timestamp' in tag:
            if '.' in tag['timestamp']:
                time_obj = datetime.strptime(tag['timestamp'], '%H:%M:%S.%f')
            else:
                time_obj = datetime.strptime(tag['timestamp'], '%H:%M:%S')
            tag_time = datetime.combine(today, time_obj.time())
            age = (datetime.now() - tag_time).total_seconds()
            return age > threshold_seconds
        return True
    except Exception:
        return True

def export_json_with_stale():
    # Add 'stale' field to each tag before exporting
    export_data = {
        'tags': {},
        'stats': stats,
        'history': packet_history[-10:]
    }
    for tag_id, tag in tag_data.items():
        tag_copy = tag.copy()
        tag_copy['stale'] = get_tag_staleness(tag_copy)
        export_data['tags'][tag_id] = tag_copy
    with open(JSON_EXPORT_PATH, 'w') as f:
        json.dump(export_data, f, indent=2)

# Patch the API endpoint to add 'stale' field to each tag
@app.route('/api/data')
def get_data():
    tags_with_stale = {}
    for tag_id, tag in tag_data.items():
        tag_copy = tag.copy()
        tag_copy['stale'] = get_tag_staleness(tag_copy)
        tags_with_stale[tag_id] = tag_copy
    return jsonify({
        'tags': tags_with_stale,
        'stats': stats,
        'history': packet_history[-10:]
    })

# Replace the original export_json with the new one
export_json = export_json_with_stale

def serial_reader():
    """Background thread to read serial data"""
    global tag_data, packet_history, stats
    
    # Initialize logging files
    initialize_log_files()
    
    while True:
        ser = None
        try:
            print("Attempting to connect to COM4...")
            ser = serial.Serial('COM4', 115200, timeout=0.1)
            # Add additional serial port settings for stability
            ser.setDTR(True)  # Data Terminal Ready
            ser.setRTS(True)  # Request To Send
            ser.flushInput()  # Clear input buffer
            ser.flushOutput() # Clear output buffer
            
            stats['connected'] = True
            stats['error'] = None
            print("✅ Connected to COM4")
            
            buffer = b''
            
            while True:
                try:
                    if ser.in_waiting > 0:
                        data = ser.read(ser.in_waiting)
                        buffer += data
                        
                        packets, buffer = extract_packets_from_buffer(buffer)
                        
                        for packet in packets:
                            stats['total_packets'] += 1
                            stats['last_update'] = datetime.now().strftime('%H:%M:%S')
                            
                            if len(packet) >= 20:
                                result = parse_fourty_packet(packet)
                                if result:
                                    tag_id = result['tag_id']
                                    old_data = tag_data.get(tag_id)
                                    tag_data[tag_id] = result
                                    
                                    # Log every tag update
                                    log_tag_update(result)
                                    
                                    # Log voltage tracking
                                    log_voltage_tracking(tag_id, result['battery_voltage'], datetime.now().isoformat())
                                    
                                    # Log status changes
                                    log_tag_status_change(tag_id, old_data, result)
                                    
                                    gps_status = "❌" if result['bad_gps'] else "✅"
                                    print(f"📡 Tag {tag_id}: {gps_status} {result['latitude']:.6f}°, {result['longitude']:.6f}°, {result['altitude_ft']:.1f}ft, {result['battery_voltage']}V")
                                    
                                    # Add to history (keep last 50 packets)
                                    packet_history.append(result)
                                    if len(packet_history) > 50:
                                        packet_history.pop(0)
                                    export_json()
                            
                            elif len(packet) >= 3:
                                result = parse_fiftysix_packet(packet)
                                if result:
                                    packet_history.append(result)
                                    if len(packet_history) > 50:
                                        packet_history.pop(0)
                                    export_json()
                    
                    time.sleep(0.01)
                    
                except serial.SerialException as e:
                    print(f"Serial communication error: {e}")
                    break
                except Exception as e:
                    print(f"Error in serial read loop: {e}")
                    break
                    
        except serial.SerialException as e:
            error_msg = f"Serial connection error: {e}"
            print(f"❌ {error_msg}")
            stats['connected'] = False
            stats['error'] = error_msg
        except PermissionError as e:
            error_msg = f"Permission error accessing COM4: {e}"
            print(f"❌ {error_msg}")
            print("💡 This usually means the port is in use or the device disconnected")
            stats['connected'] = False
            stats['error'] = error_msg
        except Exception as e:
            error_msg = f"Unexpected error: {e}"
            print(f"❌ {error_msg}")
            stats['connected'] = False
            stats['error'] = error_msg
        finally:
            if ser and ser.is_open:
                try:
                    ser.close()
                    print("🔌 Serial port closed")
                except:
                    pass
        
        print("🔄 Waiting 10 seconds before retrying connection...")
        time.sleep(10)  # Wait longer before retrying

@app.route('/')
def index():
    return render_template('index.html')

def analyze_voltage_thresholds():
    """Analyze voltage logs to find common thresholds when tags stop transmitting"""
    try:
        # Read voltage tracking data
        voltage_data = {}
        with open(VOLTAGE_LOG_FILE, 'r') as f:
            lines = f.readlines()[1:]  # Skip header
            for line in lines:
                parts = line.strip().split(',')
                if len(parts) >= 3:
                    timestamp, tag_id, voltage = parts[0], int(parts[1]), float(parts[2])
                    if tag_id not in voltage_data:
                        voltage_data[tag_id] = []
                    voltage_data[tag_id].append((timestamp, voltage))
        
        # Analyze each tag
        analysis = {}
        for tag_id, readings in voltage_data.items():
            if not readings:
                continue
                
            voltages = [v for _, v in readings]
            min_voltage = min(voltages)
            max_voltage = max(voltages)
            avg_voltage = sum(voltages) / len(voltages)
            
            # Find last 10 readings to see final voltage trend
            last_readings = readings[-10:] if len(readings) >= 10 else readings
            last_voltages = [v for _, v in last_readings]
            final_voltage = last_voltages[-1]
            
            analysis[tag_id] = {
                'total_readings': len(readings),
                'min_voltage': min_voltage,
                'max_voltage': max_voltage,
                'avg_voltage': round(avg_voltage, 2),
                'final_voltage': final_voltage,
                'voltage_range': round(max_voltage - min_voltage, 2),
                'last_seen': readings[-1][0] if readings else None
            }
        
        # Save analysis
        analysis_file = LOGS_DIR / f"voltage_analysis_{timestamp}.json"
        with open(analysis_file, 'w') as f:
            json.dump({
                'analysis_timestamp': datetime.now().isoformat(),
                'tag_analysis': analysis,
                'summary': {
                    'total_tags': len(analysis),
                    'lowest_final_voltage': min([a['final_voltage'] for a in analysis.values()]) if analysis else None,
                    'highest_final_voltage': max([a['final_voltage'] for a in analysis.values()]) if analysis else None,
                    'avg_final_voltage': sum([a['final_voltage'] for a in analysis.values()]) / len(analysis) if analysis else None
                }
            }, f, indent=2)
        
        print(f"\n🔍 Voltage Analysis Complete:")
        print(f"   📊 Analysis saved to: {analysis_file}")
        for tag_id, data in analysis.items():
            print(f"   Tag {tag_id}: {data['total_readings']} readings, final: {data['final_voltage']}V, range: {data['voltage_range']}V")
        
        return analysis
        
    except Exception as e:
        print(f"Error analyzing voltage thresholds: {e}")
        return None

def signal_handler(sig, frame):
    """Handle Ctrl+C gracefully"""
    print("\n🛑 Shutting down gracefully...")
    print("📊 Running final voltage analysis...")
    analyze_voltage_thresholds()
    print("✅ Shutdown complete")
    sys.exit(0)

def main():
    print("Live Marshall Web Parser with Comprehensive Logging")
    print("=" * 55)
    
    # Set up signal handler for graceful shutdown
    signal.signal(signal.SIGINT, signal_handler)
    
    print("🎯 Purpose: Overnight voltage threshold testing")
    print("📝 Logging: Every tag update, voltage reading, and status change")
    print("📊 Analysis: Automatic voltage threshold analysis on shutdown")
    
    # Start serial reader thread
    serial_thread = threading.Thread(target=serial_reader, daemon=True)
    serial_thread.start()
    
    # Wait a moment for connection
    time.sleep(2)
    
    # Open browser
    print("🌐 Opening web interface...")
    webbrowser.open('http://localhost:5000')
    
    # Start Flask app
    print("🚀 Starting web server on http://localhost:5000")
    print("📝 Comprehensive logging active - all data being recorded")
    print("⏰ Run overnight to collect voltage threshold data")
    print("🛑 Press Ctrl+C to stop and analyze results")
    app.run(host='0.0.0.0', port=5000, debug=False)

if __name__ == "__main__":
    main() 