#!/usr/bin/env python3
"""
High-Volume ATOS TAK Forwarder
Optimized for 100+ devices with improved serial reading, packet processing, and UDP batching.
Maintains simple file structure and configuration approach.
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
import socket
from typing import Dict, Any, Optional
from collections import deque
import queue

app = Flask(__name__)

# ==== Global Configuration ====
UNKNOWN_COORD = 9999999.0
JSON_EXPORT_PATH = 'latest_tag_data.json'
STALE_SECONDS = 60

# High-volume optimizations
MAX_QUEUE_SIZE = 1000
BATCH_SIZE = 50
SERIAL_BUFFER_SIZE = 8192
UDP_BATCH_INTERVAL = 0.5  # seconds

# Rate limiting per tag (like ATOS plugin)
TAG_RATE_LIMIT = 1.0  # 1 second between updates per tag
tag_last_processed = {}  # Track when each tag was last processed

# Global data storage
tag_data = {}
tags_pending_send = {}
TAG_DATA_LOCK = threading.Lock()
packet_history = deque(maxlen=100)  # Use deque for efficient history
stats = {
    'total_packets': 0,
    'last_update': None,
    'connected': False,
    'error': None,
    'packets_per_second': 0,
    'udp_sends': 0,
    'batch_sends': 0,
    'rate_limited_packets': 0,  # Track how many packets are rate limited
    'active_tags': 0  # Track how many tags are currently active
}

# High-volume queues
packet_queue = queue.Queue(maxsize=MAX_QUEUE_SIZE)
udp_batch_queue = queue.Queue()

# Create logging directories
LOGS_DIR = Path("comprehensive_logs")
LOGS_DIR.mkdir(exist_ok=True)

# Logging files
timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
COMPREHENSIVE_LOG_FILE = LOGS_DIR / f"all_tag_updates_{timestamp}.jsonl"
VOLTAGE_LOG_FILE = LOGS_DIR / f"voltage_tracking_{timestamp}.csv"
TAG_STATUS_LOG_FILE = LOGS_DIR / f"tag_status_{timestamp}.jsonl"
TAK_FORWARD_LOG_FILE = LOGS_DIR / f"tak_forwarding_{timestamp}.log"

# ==== Config management ====
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
        cfg = {'ip': '192.168.200.11', 'port': 8087, 'send_interval': 10, 'multicast_port': 6969}
        with open(TAK_SERVER_CONFIG_FILE, 'w') as f:
            json.dump(cfg, f, indent=2)
        return cfg
    with open(TAK_SERVER_CONFIG_FILE, 'r') as f:
        cfg = json.load(f)
    if 'send_interval' not in cfg:
        cfg['send_interval'] = 10
        save_tak_config(cfg)
    if 'multicast_port' not in cfg:
        cfg['multicast_port'] = 6969
        save_tak_config(cfg)
    return cfg

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

# ==== Optimized Logging ====
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
        with open(TAK_FORWARD_LOG_FILE, 'w') as f:
            f.write("timestamp,tag_id,ip,port,send_interval,latitude,longitude,battery_voltage\n")
        summary_file = LOGS_DIR / f"logging_summary_{timestamp}.txt"
        with open(summary_file, 'w') as f:
            f.write(f"High-Volume ATOS TAK Forwarder Started: {datetime.now()}\n")
            f.write(f"Optimized for 100+ devices\n")
            f.write(f"Log Files Created:\n")
            f.write(f"  - All updates: {COMPREHENSIVE_LOG_FILE}\n")
            f.write(f"  - Voltage tracking: {VOLTAGE_LOG_FILE}\n")
            f.write(f"  - Status changes: {TAG_STATUS_LOG_FILE}\n")
            f.write(f"  - TAK forwarding: {TAK_FORWARD_LOG_FILE}\n")
            f.write(f"  - Summary: {summary_file}\n")
        print(f"📝 High-Volume Logging initialized:")
        print(f"   📊 All updates: {COMPREHENSIVE_LOG_FILE}")
        print(f"   🔋 Voltage tracking: {VOLTAGE_LOG_FILE}")
        print(f"   📈 Status changes: {TAG_STATUS_LOG_FILE}")
        print(f"   📤 TAK forwarding: {TAK_FORWARD_LOG_FILE}")
    except Exception as e:
        print(f"Error initializing log files: {e}")

def log_tak_forward(tag_id, tag, tak_cfg, cot_message: bytes):
    try:
        with open(TAK_FORWARD_LOG_FILE, 'a') as f:
            entry = {
                'timestamp': datetime.now().isoformat(),
                'tag_id': tag_id,
                'ip': tak_cfg.get('ip'),
                'port': tak_cfg.get('port'),
                'send_interval': tak_cfg.get('send_interval'),
                'latitude': tag.get('latitude'),
                'longitude': tag.get('longitude'),
                'battery_voltage': tag.get('battery_voltage'),
                'cot_xml': cot_message.decode('utf-8', errors='replace')
            }
            f.write(json.dumps(entry) + '\n')
    except Exception as e:
        print(f"Error logging TAK forward: {e}")

def log_tak_config_update():
    try:
        with open(TAK_FORWARD_LOG_FILE, 'a') as f:
            entry = {
                'timestamp': datetime.now().isoformat(),
                'config_update': tak_server_config
            }
            f.write(json.dumps(entry) + '\n')
    except Exception as e:
        print(f"Error logging config update: {e}")

# ==== Optimized Packet Processing ====
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

def get_tag_staleness(tag, threshold_seconds=STALE_SECONDS):
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
    try:
        export_data = {
            'tags': {},
            'stats': stats,
            'history': list(packet_history)[-10:]
        }
        with TAG_DATA_LOCK:
            tag_items = list(tag_data.items())
        for tag_id, tag in tag_items:
            tag_copy = tag.copy()
            tag_copy['stale'] = get_tag_staleness(tag_copy)
            export_data['tags'][tag_id] = tag_copy
        with open(JSON_EXPORT_PATH, 'w') as f:
            json.dump(export_data, f, indent=2)
    except Exception as e:
        print(f"[WARNING] Could not write {JSON_EXPORT_PATH}: {e}")

export_json = export_json_with_stale

# ==== Optimized TAK Client ====
class OptimizedTAKClient:
    def __init__(self):
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.sock.setsockopt(socket.SOL_SOCKET, socket.SO_SNDBUF, 65536)  # Larger send buffer
        
        # Create multicast socket once
        try:
            print("🔧 Creating multicast socket...")
            self.multicast_sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)
            self.multicast_sock.setsockopt(socket.IPPROTO_IP, socket.IP_MULTICAST_TTL, 2)
            print("✅ Multicast socket created successfully")
        except Exception as e:
            print(f"❌ Failed to create multicast socket: {e}")
            self.multicast_sock = None

    def create_cot_message(self, tag_id: str, tag_data: Dict[str, Any], callsign: str) -> Optional[bytes]:
        try:
            color = tag_data.get('color', 'white').capitalize().replace('_', ' ')
            track_type = tag_data.get('track_type', 'PAX')
            tag_type_map = {
                'PAX': 'Personnel',
                'K9': 'K9',
                'VEHICLE': 'Vehicle',
                'EQUIPMENT': 'Equipment',
                'MEDICAL': 'Medical',
                'WEAPON': 'Weapon',
                'CUSTOM': 'Custom',
                'BUNDLE': 'Bundle',
                'BOAT': 'Boat',
                'FIXED_WING': 'Fixed_Wing',
                'ROTARY_WING': 'Rotary_Wing',
                'UAS': 'UAS',
            }
            tag_type_xml = tag_type_map.get(track_type.upper(), 'PAX')
            lat = f"{tag_data.get('latitude', 0):.7f}"
            lon = f"{tag_data.get('longitude', 0):.7f}"
            hae = f"{tag_data.get('altitude', 0):.3f}"
            battery = f"{tag_data.get('battery_voltage', 0):.2f}"
            temp = f"{tag_data.get('temperature', 0):.0f}"
            now = datetime.now(timezone.utc)
            time_str = now.strftime('%Y-%m-%dT%H:%M:%S.%f')[:-3] + 'Z'
            cot_xml = f'''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>\n<event version="2.0" uid="atos-{tag_id}-60eabd39-32ed-436f-9a17-4a8add4d24fc" type="a-f-G-U-C-I" time="{time_str}" start="{time_str}" stale="{(now.replace(microsecond=0) + timedelta(minutes=5)).strftime('%Y-%m-%dT%H:%M:%S.000Z')}" how="m-g" access="Undefined"><point lat="{lat}" lon="{lon}" hae="{hae}" ce="1.3" le="2.0"/><detail><track vspeed="0.0" course="270.0" slope="0.0" speed="0.2777777777777778"/><link uid="ANDROID-3e844b3d264f49fb" type="a-f-G-U-C-I" parent_callsign="ATOS Forwarder" relation="p-p"/><contact callsign="{callsign}"/><__atos color="{color}" tag_type="{tag_type_xml}" manifest="Course " alarm="0" temp_c="{temp}" voltage="{battery}"><attributes PAX_Type="" Team_Frequency="" Special_Equipment="" Frequency="" Remark=""/></__atos><archive/></detail></event>'''
            return cot_xml.encode('utf-8')
        except Exception as e:
            print(f"❌ Error creating COT message for tag {tag_id}: {e}")
            return None

    def send_batch(self, batch_messages):
        """Send a batch of COT messages efficiently to both TAK server and multicast"""
        if not batch_messages:
            return
        
        host = tak_server_config.get('ip', '127.0.0.1')
        port = tak_server_config.get('port', 0)
        multicast_port = tak_server_config.get('multicast_port', 6969)
        
        sent_count = 0
        for tag_id, tag_data, callsign in batch_messages:
            try:
                cot_message = self.create_cot_message(str(tag_id), tag_data, callsign)
                if cot_message:
                    print(cot_message.decode('utf-8', errors='replace'))  # Print COT XML before sending
                    
                    # Send to TAK server
                    self.sock.sendto(cot_message, (host, port))
                    
                    # Send to multicast (UDP 6969)
                    if self.multicast_sock is None:
                        print(f"❌ Multicast socket not available for tag {tag_id}")
                    else:
                        try:
                            print(f"🔍 Attempting multicast send to 239.2.3.1:{multicast_port} for tag {tag_id}")
                            self.multicast_sock.sendto(cot_message, ('239.2.3.1', multicast_port))
                            print(f"✅ Multicast send successful for tag {tag_id}")
                        except Exception as e:
                            print(f"⚠️ Multicast send failed for tag {tag_id}: {e}")
                    
                    sent_count += 1
                    log_tak_forward(tag_id, tag_data, tak_server_config, cot_message)
            except Exception as e:
                print(f"Error sending tag {tag_id}: {e}")
        
        stats['udp_sends'] += sent_count
        stats['batch_sends'] += 1
        if sent_count > 0:
            print(f"📤 Sent batch of {sent_count} messages to {host}:{port} and multicast 239.2.3.1:{multicast_port}")
    
    def close(self):
        """Close the multicast socket"""
        try:
            if self.multicast_sock is not None:
                self.multicast_sock.close()
        except:
            pass

# ==== Optimized Worker Threads ====
def packet_processor():
    """Process packets from the queue with per-tag rate limiting"""
    print("🚀 Packet processor thread started")
    while True:
        try:
            packet = packet_queue.get(timeout=1)
            if packet is None:  # Shutdown signal
                break
                
            if len(packet) >= 20:
                result = parse_fourty_packet(packet)
                if result:
                    tag_id = result['tag_id']
                    current_time = time.time()
                    
                    # Check rate limiting per tag (like ATOS plugin)
                    last_processed = tag_last_processed.get(tag_id, 0)
                    if current_time - last_processed < TAG_RATE_LIMIT:
                        # Skip this packet - too soon since last update for this tag
                        stats['rate_limited_packets'] += 1
                        print(f"⏱️ Rate limiting tag {tag_id} - skipping packet (last update was {current_time - last_processed:.2f}s ago)")
                        continue
                    
                    # Update last processed time for this tag
                    tag_last_processed[tag_id] = current_time
                    
                    with TAG_DATA_LOCK:
                        old_data = tag_data.get(tag_id)
                        tag_data[tag_id] = result
                        tags_pending_send[tag_id] = result.copy()
                    
                    log_tag_update(result)
                    log_voltage_tracking(tag_id, result['battery_voltage'], datetime.now().isoformat())
                    log_tag_status_change(tag_id, old_data, result)
                    
                    gps_status = "❌" if result['bad_gps'] else "✅"
                    print(f"📡 Tag {tag_id}: {gps_status} {result['latitude']:.6f}°, {result['longitude']:.6f}°, {result['altitude_ft']:.1f}ft, {result['battery_voltage']}V")
                    
                    packet_history.append(result)
                    export_json()
                    
            elif len(packet) >= 3:
                result = parse_fiftysix_packet(packet)
                if result:
                    packet_history.append(result)
                    export_json()
                    
        except queue.Empty:
            continue
        except Exception as e:
            print(f"Error in packet processor: {e}")

def udp_batch_sender():
    """Send batched UDP messages"""
    print("🚀 UDP batch sender thread started")
    tak_client = OptimizedTAKClient()
    
    while True:
        try:
            # Collect pending tags
            with TAG_DATA_LOCK:
                pending = tags_pending_send.copy()
                tags_pending_send.clear()
            
            if not pending:
                time.sleep(UDP_BATCH_INTERVAL)
                continue
            
            # Prepare batch
            batch_messages = []
            for tag_id, tag in pending.items():
                if get_tag_staleness(tag):
                    continue
                    
                cfg = forwarding_config['tags'].get(str(tag_id), {})
                should_forward = cfg.get('forward', forwarding_config.get('forward_all', False))
                if not should_forward:
                    continue
                    
                tag_to_send = tag.copy()
                tag_to_send['color'] = cfg.get('color', 'white')
                tag_to_send['track_type'] = cfg.get('track_type', 'PAX')
                callsign = cfg.get('callsign')
                if not callsign:
                    callsign = tag_id
                tag_to_send['callsign'] = callsign
                batch_messages.append((tag_id, tag_to_send, callsign))
                
                if len(batch_messages) >= BATCH_SIZE:
                    break
            
            # Send batch
            if batch_messages:
                tak_client.send_batch(batch_messages)
            
            time.sleep(UDP_BATCH_INTERVAL)
            
        except Exception as e:
            print(f"Error in UDP batch sender: {e}")
            time.sleep(1)

# ==== Optimized Serial Reader ====
def serial_reader():
    """High-volume serial reader with optimized buffering"""
    global stats
    initialize_log_files()
    
    while True:
        ser = None
        try:
            print("🚀 Attempting to connect to /dev/ttyACM0...")
            ser = serial.Serial('/dev/ttyACM0', 115200, timeout=0.1)
            ser.setDTR(True)
            ser.setRTS(True)
            ser.flushInput()
            ser.flushOutput()
            stats['connected'] = True
            stats['error'] = None
            print("✅ Connected to /dev/ttyACM0")
            
            buffer = b''
            last_stats_time = time.time()
            packets_this_second = 0
            
            while True:
                try:
                    # Read all available data
                    if ser.in_waiting > 0:
                        data = ser.read(ser.in_waiting)
                        buffer += data
                        
                        # Extract packets
                        packets, buffer = extract_packets_from_buffer(buffer)
                        
                        # Queue packets for processing
                        for packet in packets:
                            try:
                                packet_queue.put_nowait(packet)
                                packets_this_second += 1
                                stats['total_packets'] += 1
                            except queue.Full:
                                print("⚠️ Packet queue full, dropping packet")
                        
                        # Update stats
                        current_time = time.time()
                        if current_time - last_stats_time >= 1.0:
                            stats['packets_per_second'] = packets_this_second
                            stats['last_update'] = datetime.now().strftime('%H:%M:%S')
                            packets_this_second = 0
                            last_stats_time = current_time
                    
                    time.sleep(0.001)  # 1ms sleep for high-volume processing
                    
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
            error_msg = f"Permission error accessing /dev/ttyACM0: {e}"
            print(f"❌ {error_msg}")
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
                except Exception:
                    pass
        
        print("🔄 Waiting 10 seconds before retrying connection...")
        time.sleep(10)

# ==== API endpoints ====
@app.route('/api/tags')
def api_tags():
    result = {}
    with TAG_DATA_LOCK:
        tag_data_snapshot = tag_data.copy()
    for i in range(1, 101):
        tag_id = str(i)
        tag_key = int(tag_id)
        if tag_key in tag_data_snapshot:
            t = tag_data_snapshot[tag_key].copy()
            t['stale'] = get_tag_staleness(t)
        else:
            t = {'stale': True, 'bad_gps': True}
        cfg = forwarding_config['tags'].get(tag_id, {})
        t['forward'] = cfg.get('forward', forwarding_config.get('forward_all', False))
        callsign = cfg.get('callsign')
        if not callsign:
            callsign = tag_id
        t['callsign'] = callsign
        t['color'] = cfg.get('color', 'white')
        t['track_type'] = cfg.get('track_type', 'PAX')
        result[tag_id] = t
    return jsonify(result)

@app.route('/api/stats')
def api_stats():
    # Update active tags count
    stats['active_tags'] = len(tag_last_processed)
    
    return jsonify({
        'stats': stats,
        'queue_size': packet_queue.qsize(),
        'pending_tags': len(tags_pending_send),
        'rate_limiting': {
            'tag_rate_limit_seconds': TAG_RATE_LIMIT,
            'active_tags': len(tag_last_processed),
            'rate_limited_packets': stats.get('rate_limited_packets', 0)
        }
    })

@app.route('/api/tak_server', methods=['GET', 'POST'])
def api_tak_server():
    global tak_server_config
    if request.method == 'GET':
        return jsonify(tak_server_config)
    data = request.get_json(force=True)
    tak_server_config['ip'] = data.get('ip', tak_server_config.get('ip'))
    tak_server_config['port'] = int(data.get('port', tak_server_config.get('port')))
    if 'multicast_port' in data:
        try:
            tak_server_config['multicast_port'] = int(data.get('multicast_port'))
        except (TypeError, ValueError):
            pass
    if 'send_interval' in data:
        try:
            tak_server_config['send_interval'] = int(data.get('send_interval'))
        except (TypeError, ValueError):
            pass
    save_tak_config(tak_server_config)
    log_tak_config_update()
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

@app.route('/api/tag/<tag_id>/color', methods=['POST'])
def api_tag_color(tag_id):
    global forwarding_config
    data = request.get_json(force=True)
    forwarding_config['tags'].setdefault(tag_id, {})['color'] = data.get('color', 'white')
    save_forwarding_config(forwarding_config)
    return jsonify({'status': 'ok'})

@app.route('/api/tag/<tag_id>/track_type', methods=['POST'])
def api_tag_track_type(tag_id):
    global forwarding_config
    data = request.get_json(force=True)
    forwarding_config['tags'].setdefault(tag_id, {})['track_type'] = data.get('track_type', 'PAX')
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

@app.route('/api/reset_tags', methods=['POST'])
def api_reset_tags():
    global tag_data, forwarding_config
    for tag_id in list(forwarding_config['tags'].keys()):
        if 'callsign' in forwarding_config['tags'][tag_id]:
            del forwarding_config['tags'][tag_id]['callsign']
        forwarding_config['tags'][tag_id]['color'] = 'white'
    save_forwarding_config(forwarding_config)
    with TAG_DATA_LOCK:
        tag_data.clear()
    return jsonify({'status': 'success'})

@app.route('/api/data')
def get_data():
    tags_with_stale = {}
    with TAG_DATA_LOCK:
        tag_items = list(tag_data.items())
    for tag_id, tag in tag_items:
        tag_copy = tag.copy()
        tag_copy['stale'] = get_tag_staleness(tag_copy)
        tags_with_stale[tag_id] = tag_copy
    return jsonify({
        'tags': tags_with_stale,
        'stats': stats,
        'history': list(packet_history)[-10:]
    })

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/display')
def display():
    return render_template('display.html')

# ==== Signal handling ====
def signal_handler(sig, frame):
    print("\n🛑 Shutting down High-Volume ATOS TAK Forwarder...")
    # Signal threads to stop
    packet_queue.put(None)  # Shutdown signal
    sys.exit(0)

# ==== Main function ====
def main():
    print("🚀 High-Volume ATOS TAK Forwarder for 100+ Devices")
    print("🔧 Version: Thread-based with multicast debugging")
    print("=" * 60)
    print("📊 Optimizations: Queue-based processing, UDP batching, efficient memory")
    print("🎯 Target: 100+ devices with high packet rates")
    print("⚡ Performance: Optimized for high-volume operations")
    print("💾 Memory: Efficient queues and data structures")
    print("🌐 Web interface: http://localhost:5000")
    print("📊 Dashboard: http://localhost:5000/display")
    print("📈 Performance stats: http://localhost:5000/api/stats")
    
    signal.signal(signal.SIGINT, signal_handler)
    signal.signal(signal.SIGTERM, signal_handler)
    
    # Start worker threads
    print("🚀 Starting High-Volume TAK Processor...")
    
    # Start packet processor thread
    print("🔧 Creating packet processor thread...")
    packet_thread = threading.Thread(target=packet_processor, daemon=True)
    packet_thread.start()
    print("✅ Packet processor thread created")
    
    # Start UDP batch sender thread
    print("🔧 Starting UDP batch sender thread...")
    udp_thread = threading.Thread(target=udp_batch_sender, daemon=True)
    udp_thread.start()
    print("✅ UDP batch sender thread started")
    
    # Start serial reader thread
    serial_thread = threading.Thread(target=serial_reader, daemon=True)
    serial_thread.start()
    
    # Start Flask web server
    def run_flask():
        app.run(host='0.0.0.0', port=5000, debug=False, threaded=True)
    
    flask_thread = threading.Thread(target=run_flask, daemon=True)
    flask_thread.start()
    
    print("✅ All threads started. Press Ctrl+C to stop.")
    
    # Keep main thread alive
    try:
        while True:
            time.sleep(1)
    except KeyboardInterrupt:
        signal_handler(signal.SIGINT, None)

if __name__ == '__main__':
    main() 