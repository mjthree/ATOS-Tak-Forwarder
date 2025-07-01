#!/usr/bin/env python3
"""
Unified Marshall TAK Forwarder
Combines live_marshall_web and atos_tak_client_udp functionality with
additional web controls for TAK forwarding.
"""

import serial
import struct
import time
import json
import threading
import ctypes
from datetime import datetime, timedelta, timezone
from flask import Flask, render_template, jsonify, request
import webbrowser
import os
from pathlib import Path
import signal
import sys
import asyncio
import socket
from typing import Dict, Any, Optional

app = Flask(__name__)

# ==== Data from live_marshall_web ====

# Global data storage
tag_data = {}
packet_history = []
stats = {
    'total_packets': 0,
    'last_update': None,
    'connected': False,
    'error': None
}

# Lock to guard access to tag_data, stats and JSON export
data_lock = threading.Lock()

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

# ==== Config management for new features ====
FORWARDING_CONFIG_FILE = 'forwarding_config.json'
TAK_SERVER_CONFIG_FILE = 'tak_server_config.json'
TEMPLATES_FILE = 'templates.json'

def load_forwarding_config():
    if not os.path.exists(FORWARDING_CONFIG_FILE):
        cfg = {'forward_all': False, 'tags': {}}
        with open(FORWARDING_CONFIG_FILE, 'w') as f:
            json.dump(cfg, f, indent=2)
        return cfg
    with open(FORWARDING_CONFIG_FILE, 'r') as f:
        return json.load(f)

def save_forwarding_config(cfg):
    with open(FORWARDING_CONFIG_FILE, 'w') as f:
        json.dump(cfg, f, indent=2)


def load_tak_config():
    if not os.path.exists(TAK_SERVER_CONFIG_FILE):
        cfg = {'ip': '192.168.200.11', 'port': 8087}
        with open(TAK_SERVER_CONFIG_FILE, 'w') as f:
            json.dump(cfg, f, indent=2)
        return cfg
    with open(TAK_SERVER_CONFIG_FILE, 'r') as f:
        return json.load(f)

def save_tak_config(cfg):
    with open(TAK_SERVER_CONFIG_FILE, 'w') as f:
        json.dump(cfg, f, indent=2)


def load_templates():
    if os.path.exists(TEMPLATES_FILE):
        with open(TEMPLATES_FILE, 'r') as f:
            try:
                return json.load(f)
            except Exception:
                return {}
    return {}

def save_templates(tpls):
    with open(TEMPLATES_FILE, 'w') as f:
        json.dump(tpls, f, indent=2)

# Load persistent configs
forwarding_config = load_forwarding_config()
tak_server_config = load_tak_config()
templates = load_templates()
# ==== Logging helpers ====

def log_tag_update(tag_data_entry):
    try:
        with open(COMPREHENSIVE_LOG_FILE, 'a') as f:
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
    try:
        with open(VOLTAGE_LOG_FILE, 'a') as f:
            f.write(f"{timestamp_str},{tag_id},{voltage}\n")
    except Exception as e:
        print(f"Error logging voltage: {e}")


def log_tag_status_change(tag_id, old_data, new_data):
    try:
        if old_data is None:
            status_entry = {
                'timestamp': datetime.now().isoformat(),
                'tag_id': tag_id,
                'event': 'tag_first_seen',
                'voltage': new_data['battery_voltage'],
                'gps_status': 'good' if not new_data['bad_gps'] else 'bad'
            }
        else:
            voltage_diff = abs(new_data['battery_voltage'] - old_data['battery_voltage'])
            gps_changed = old_data['bad_gps'] != new_data['bad_gps']
            if voltage_diff >= 0.1:
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
                return
        with open(TAG_STATUS_LOG_FILE, 'a') as f:
            f.write(json.dumps(status_entry) + '\n')
    except Exception as e:
        print(f"Error logging status change: {e}")


def initialize_log_files():
    try:
        with open(VOLTAGE_LOG_FILE, 'w') as f:
            f.write("timestamp,tag_id,voltage\n")
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


def extract_packets_from_buffer(buffer):
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
    """Return True if tag data is older than threshold_seconds."""
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
    """Write latest tag data to JSON atomically."""
    with data_lock:
        export_data = {
            'tags': {},
            'stats': stats,
            'history': packet_history[-10:]
        }
        for tag_id, tag in tag_data.items():
            tag_copy = tag.copy()
            tag_copy['stale'] = get_tag_staleness(tag_copy)
            export_data['tags'][tag_id] = tag_copy
        tmp_path = JSON_EXPORT_PATH + '.tmp'
        with open(tmp_path, 'w') as f:
            json.dump(export_data, f, indent=2)
        os.replace(tmp_path, JSON_EXPORT_PATH)

export_json = export_json_with_stale

@app.route('/api/data')
def get_data():
    with data_lock:
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

@app.route('/')
def index():
    return render_template('index.html')

# ==== Serial reader thread ====

def serial_reader():
    global tag_data, packet_history, stats
    initialize_log_files()
    while True:
        ser = None
        try:
            print("Attempting to connect to COM4...")
            ser = serial.Serial('COM4', 115200, timeout=0.1)
            ser.setDTR(True)
            ser.setRTS(True)
            ser.flushInput()
            ser.flushOutput()
            with data_lock:
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
                            with data_lock:
                                stats['total_packets'] += 1
                                stats['last_update'] = datetime.now().strftime('%H:%M:%S')
                            if len(packet) >= 20:
                                result = parse_fourty_packet(packet)
                                if result:
                                    tag_id = result['tag_id']
                                    with data_lock:
                                        old_data = tag_data.get(tag_id)
                                        tag_data[tag_id] = result
                                        log_tag_update(result)
                                        log_voltage_tracking(tag_id, result['battery_voltage'], datetime.now().isoformat())
                                        log_tag_status_change(tag_id, old_data, result)
                                        packet_history.append(result)
                                        if len(packet_history) > 50:
                                            packet_history.pop(0)
                                        export_json()
                                    gps_status = "❌" if result['bad_gps'] else "✅"
                                    print(f"📡 Tag {tag_id}: {gps_status} {result['latitude']:.6f}°, {result['longitude']:.6f}°, {result['altitude_ft']:.1f}ft, {result['battery_voltage']}V")
                            elif len(packet) >= 3:
                                result = parse_fiftysix_packet(packet)
                                if result:
                                    with data_lock:
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
            with data_lock:
                stats['connected'] = False
                stats['error'] = error_msg
        except PermissionError as e:
            error_msg = f"Permission error accessing COM4: {e}"
            print(f"❌ {error_msg}")
            print("💡 This usually means the port is in use or the device disconnected")
            with data_lock:
                stats['connected'] = False
                stats['error'] = error_msg
        except Exception as e:
            error_msg = f"Unexpected error: {e}"
            print(f"❌ {error_msg}")
            with data_lock:
                stats['connected'] = False
                stats['error'] = error_msg
        finally:
            if ser and ser.is_open:
                try:
                    ser.close()
                    print("🔌 Serial port closed")
                except Exception:
                    pass
        print("🔄 Waiting 10 seconds before retrying connection...")
        time.sleep(10)

# ==== TAK client from atos_tak_client_udp ====
class AtosTAKClient:
    def __init__(self):
        self.json_file = "latest_tag_data.json"
        self.last_data: Dict[str, Any] = {}
        self.last_sent: Dict[str, datetime] = {}
        self.update_interval = 5
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    def load_tag_data(self) -> Optional[Dict[str, Any]]:
        try:
            if not os.path.exists(self.json_file):
                print(f"⚠️  JSON file {self.json_file} not found")
                return None
            with open(self.json_file, 'r') as f:
                data = json.load(f)
            if not data or 'tags' not in data:
                print("⚠️  No valid tag data in JSON file")
                return None
            return data
        except Exception as e:
            print(f"❌ Error loading JSON data: {e}")
            return None

    def create_cot_message(self, tag_id: str, tag_data: Dict[str, Any], callsign: str) -> Optional[bytes]:
        try:
            lat = f"{tag_data.get('latitude', 0):.7f}"
            lon = f"{tag_data.get('longitude', 0):.7f}"
            hae = f"{tag_data.get('altitude', 0):.3f}"
            battery = f"{tag_data.get('battery_voltage', 0):.2f}"
            temp = f"{tag_data.get('temperature', 0):.0f}"
            now = datetime.now(timezone.utc)
            time_str = now.strftime('%Y-%m-%dT%H:%M:%S.%f')[:-3] + 'Z'
            cot_xml = f'''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n<event version="2.0" uid="atos-{tag_id}-60eabd39-32ed-436f-9a17-4a8add4d24fc" type="a-f-G-U-C-I" time="{time_str}" start="{time_str}" stale="{(now.replace(microsecond=0) + timedelta(minutes=5)).strftime('%Y-%m-%dT%H:%M:%S.000Z')}" how="m-g" access="Undefined"><point lat="{lat}" lon="{lon}" hae="{hae}" ce="1.3" le="2.0"/><detail><track vspeed="0.0" course="270.0" slope="0.0" speed="0.2777777777777778"/><link uid="ANDROID-3e844b3d264f49fb" type="a-f-G-U-C-I" parent_callsign="Atos Tablet" relation="p-p"/><contact callsign="PAX {callsign}"/><__atos color="White" tag_type="Personnel" manifest="Course " alarm="0" temp_c="{temp}" voltage="{battery}"><attributes PAX_Type="" Team_Frequency="" Special_Equipment="" Frequency="" Remark=""/></__atos><archive/></detail></event>'''
            return cot_xml.encode('utf-8')
        except Exception as e:
            print(f"❌ Error creating COT message for tag {tag_id}: {e}")
            return None

    async def run(self):
        global forwarding_config, tak_server_config
        print("🚀 ATOS TAK Client (Direct UDP) Starting...")
        print("=" * 50)
        while True:
            try:
                data = self.load_tag_data()
                if data and 'tags' in data:
                    tags = data['tags']
                    stats_info = data.get('stats', {})
                    print(f"📡 Processing {len(tags)} tags (Total packets: {stats_info.get('total_packets', 0)})")
                    for tag_id, tag in tags.items():
                        if tag.get('stale', False):
                            continue
                        cfg = forwarding_config['tags'].get(str(tag_id), {})
                        should_forward = cfg.get('forward', forwarding_config.get('forward_all', False))
                        if not should_forward:
                            continue
                        use_data = tag
                        if tag.get('bad_gps', False):
                            last = self.last_data.get(str(tag_id))
                            if last and not last.get('bad_gps', False):
                                use_data = last
                        callsign = cfg.get('callsign', str(tag_id))
                        cot_message = self.create_cot_message(str(tag_id), use_data, callsign if callsign else str(tag_id))
                        if cot_message:
                            host = tak_server_config.get('ip', '127.0.0.1')
                            port = tak_server_config.get('port', 0)
                            print(f"[DEBUG] Sending to {host}:{port} for Tag {tag_id}:")
                            self.sock.sendto(cot_message, (host, port))
                            self.last_sent[tag_id] = datetime.utcnow()
                            print(f"✅ Sent COT for Tag {tag_id}: {use_data.get('latitude', 0):.6f}°, {use_data.get('longitude', 0):.6f}°, {use_data.get('battery_voltage', 0)}V")
                        if not tag.get('bad_gps', False):
                            self.last_data[str(tag_id)] = tag
                else:
                    print("⏳ Waiting for valid tag data...")
                await asyncio.sleep(self.update_interval)
            except Exception as e:
                print(f"❌ Error in main loop: {e}")
                await asyncio.sleep(5)

# ==== API endpoints for web controls ====

@app.route('/api/tags')
def api_tags():
    with data_lock:
        result = {}
        for i in range(1, 101):
            tag_id = str(i)
            tag_key = int(tag_id)
            if tag_key in tag_data:
                t = tag_data[tag_key].copy()
                t['stale'] = get_tag_staleness(t)
            else:
                t = {'stale': True, 'bad_gps': True}
            cfg = forwarding_config['tags'].get(tag_id, {})
            t['forward'] = cfg.get('forward', forwarding_config.get('forward_all', False))
            t['callsign'] = cfg.get('callsign', '')
            result[tag_id] = t
        return jsonify(result)

@app.route('/api/tak_server', methods=['GET', 'POST'])
def api_tak_server():
    global tak_server_config
    if request.method == 'GET':
        return jsonify(tak_server_config)
    data = request.get_json(force=True)
    tak_server_config['ip'] = data.get('ip', tak_server_config.get('ip'))
    tak_server_config['port'] = int(data.get('port', tak_server_config.get('port')))
    save_tak_config(tak_server_config)
    return jsonify({'status': 'ok'})

@app.route('/api/forward_all', methods=['GET', 'POST'])
def api_forward_all():
    global forwarding_config
    if request.method == 'GET':
        return jsonify({'forward_all': forwarding_config.get('forward_all', False)})
    data = request.get_json(force=True)
    state = bool(data.get('forward_all'))
    forwarding_config['forward_all'] = state
    for t in forwarding_config['tags'].values():
        t['forward'] = state
    save_forwarding_config(forwarding_config)
    return jsonify({'status': 'ok'})

@app.route('/api/tag/<tag_id>/forward', methods=['POST'])
def api_tag_forward(tag_id):
    global forwarding_config
    data = request.get_json(force=True)
    forwarding_config['tags'].setdefault(tag_id, {})['forward'] = bool(data.get('forward'))
    save_forwarding_config(forwarding_config)
    return jsonify({'status': 'ok'})

@app.route('/api/tag/<tag_id>/callsign', methods=['POST'])
def api_tag_callsign(tag_id):
    global forwarding_config
    data = request.get_json(force=True)
    forwarding_config['tags'].setdefault(tag_id, {})['callsign'] = data.get('callsign', '')
    save_forwarding_config(forwarding_config)
    return jsonify({'status': 'ok'})

@app.route('/api/templates', methods=['GET', 'POST'])
def api_templates():
    global templates, forwarding_config
    if request.method == 'GET':
        return jsonify(list(templates.keys()))
    data = request.get_json(force=True)
    action = data.get('action')
    name = data.get('name')
    if action == 'save' and name:
        templates[name] = {
            'forward_all': forwarding_config.get('forward_all', False),
            'tags': forwarding_config.get('tags', {})
        }
    elif action == 'load' and name and name in templates:
        cfg = templates[name]
        forwarding_config['forward_all'] = cfg.get('forward_all', False)
        forwarding_config['tags'] = cfg.get('tags', {})
        save_forwarding_config(forwarding_config)
    elif action == 'delete' and name:
        templates.pop(name, None)
    elif action == 'rename' and name and 'new_name' in data:
        new_name = data.get('new_name')
        if name in templates and new_name:
            templates[new_name] = templates.pop(name)
            name = new_name
    save_templates(templates)
    return jsonify(list(templates.keys()))

# ==== Utility functions ====

def analyze_voltage_thresholds():
    try:
        voltage_data = {}
        with open(VOLTAGE_LOG_FILE, 'r') as f:
            lines = f.readlines()[1:]
            for line in lines:
                parts = line.strip().split(',')
                if len(parts) >= 3:
                    ts, tid, volt = parts[0], int(parts[1]), float(parts[2])
                    voltage_data.setdefault(tid, []).append((ts, volt))
        analysis = {}
        for tid, readings in voltage_data.items():
            if not readings:
                continue
            voltages = [v for _, v in readings]
            min_voltage = min(voltages)
            max_voltage = max(voltages)
            avg_voltage = sum(voltages) / len(voltages)
            last_readings = readings[-10:] if len(readings) >= 10 else readings
            last_voltages = [v for _, v in last_readings]
            final_voltage = last_voltages[-1]
            analysis[tid] = {
                'total_readings': len(readings),
                'min_voltage': min_voltage,
                'max_voltage': max_voltage,
                'avg_voltage': round(avg_voltage, 2),
                'final_voltage': final_voltage,
                'voltage_range': round(max_voltage - min_voltage, 2),
                'last_seen': readings[-1][0] if readings else None
            }
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
        for tid, data in analysis.items():
            print(f"   Tag {tid}: {data['total_readings']} readings, final: {data['final_voltage']}V, range: {data['voltage_range']}V")
        return analysis
    except Exception as e:
        print(f"Error analyzing voltage thresholds: {e}")
        return None


def signal_handler(sig, frame):
    print("\n🛑 Shutting down gracefully...")
    print("📊 Running final voltage analysis...")
    analyze_voltage_thresholds()
    print("✅ Shutdown complete")
    sys.exit(0)


def start_tak_client():
    asyncio.run(AtosTAKClient().run())


def main():
    print("Live Marshall TAK Forwarder")
    print("=" * 55)
    signal.signal(signal.SIGINT, signal_handler)
    print("🎯 Purpose: Overnight voltage threshold testing")
    print("📝 Logging: Every tag update, voltage reading, and status change")
    print("📊 Analysis: Automatic voltage threshold analysis on shutdown")
    serial_thread = threading.Thread(target=serial_reader, daemon=True)
    serial_thread.start()
    tak_thread = threading.Thread(target=start_tak_client, daemon=True)
    tak_thread.start()
    time.sleep(2)
    print("🌐 Opening web interface...")
    webbrowser.open('http://localhost:5000')
    print("🚀 Starting web server on http://localhost:5000")
    print("📝 Comprehensive logging active - all data being recorded")
    print("⏰ Run overnight to collect voltage threshold data")
    print("🛑 Press Ctrl+C to stop and analyze results")
    app.run(host='0.0.0.0', port=5000, debug=False)


if __name__ == "__main__":
    main()
