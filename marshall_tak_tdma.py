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
from flask import Flask, render_template, jsonify, request, send_file, make_response
import webbrowser
import os
from pathlib import Path
import signal
import sys
import socket
from typing import Dict, Any, Optional
from collections import deque
import queue
import atos_sqlite
import io
import csv
from dateutil import parser as dateparser
import sqlite3
from functools import wraps
import hashlib

app = Flask(__name__)
app.secret_key = 'apexshield-atos-tak-forwarder-2024'

# ==== Global Configuration ====
UNKNOWN_COORD = 9999999.0
JSON_EXPORT_PATH = 'latest_tag_data.json'
STALE_SECONDS = 60

# ==== Logging Configuration ====
# Set to True to enable file logging, False to disable (SQLite logging always enabled)
ENABLE_FILE_LOGGING = False

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

ADMIN_PASSWORD_HASH = 'b1e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2'  # placeholder, will set real hash below

# Set the real hash for 'apex123APEX!@#'
def _get_admin_password_hash():
    return hashlib.sha256('apex123APEX!@#'.encode('utf-8')).hexdigest()
ADMIN_PASSWORD_HASH = _get_admin_password_hash()

def check_admin_auth():
    from flask import session, request
    def check_hash(pw):
        return hashlib.sha256(pw.encode('utf-8')).hexdigest() == ADMIN_PASSWORD_HASH
    if session.get('admin_authenticated'):
        return True
    if request.method == 'POST':
        data = request.get_json(silent=True) or {}
        pw = data.get('admin_password')
        if pw and check_hash(pw):
            session['admin_authenticated'] = True
            return True
    if request.method == 'GET':
        pw = request.args.get('admin_password')
        if pw and check_hash(pw):
            session['admin_authenticated'] = True
            return True
    return False

def admin_required(f):
    @wraps(f)
    def decorated(*args, **kwargs):
        from flask import session, request, redirect, url_for, jsonify
        if not check_admin_auth():
            if request.path.startswith('/api/'):
                return jsonify({'error': 'Admin authentication required'}), 401
            return redirect(url_for('admin_login'))
        return f(*args, **kwargs)
    return decorated

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
        cfg = {'ip': '192.168.200.11', 'port': 8686, 'send_interval': 10, 'multicast_port': 6969, 'tdma_interval': 2, 'multicast_interval': 2, 'disable_multicast': False}
        with open(TAK_SERVER_CONFIG_FILE, 'w') as f:
            json.dump(cfg, f, indent=2)
        return cfg
    with open(TAK_SERVER_CONFIG_FILE, 'r') as f:
        cfg = json.load(f)
    if 'send_interval' not in cfg:
        cfg['send_interval'] = 10
    if 'multicast_port' not in cfg:
        cfg['multicast_port'] = 6969
    if 'tdma_interval' not in cfg:
        cfg['tdma_interval'] = 2
    if 'multicast_interval' not in cfg:
        cfg['multicast_interval'] = 2
    if 'disable_multicast' not in cfg:
        cfg['disable_multicast'] = False
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
    pass

def log_voltage_tracking(tag_id, voltage, timestamp_str):
    pass

def log_tag_status_change(tag_id, old_data, new_data):
    pass

def initialize_log_files():
    pass

def log_tak_forward(tag_id, tag, tak_cfg, cot_message: bytes):
    try:
        atos_sqlite.insert_tag_event(
            timestamp=datetime.now().isoformat(),
            tag_id=tag_id,
            latitude=tag.get('latitude'),
            longitude=tag.get('longitude'),
            altitude_ft=tag.get('altitude_ft'),
            battery_voltage=tag.get('battery_voltage'),
            temperature=tag.get('temperature'),
            pdop=tag.get('pdop'),
            wire_status=tag.get('wire_status'),
            object_status=tag.get('object_status'),
            emergency=tag.get('emergency'),
            is_fresh=tag.get('is_fresh'),
            bad_gps=tag.get('bad_gps'),
            tak_ip=tak_cfg.get('ip'),
            tak_port=tak_cfg.get('port'),
            cot_xml=cot_message.decode('utf-8', errors='replace'),
            event_type='tak_forward'
        )
    except Exception as e:
        print(f"Error logging TAK forward to SQLite: {e}")

def log_tak_config_update():
    if not ENABLE_FILE_LOGGING:
        return
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
    if not ENABLE_FILE_LOGGING:
        return
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

    def send_batch(self, batch_messages, *, send_to_server=True, send_to_multicast=True):
        """Send a batch of COT messages.

        Parameters
        ----------
        batch_messages : list
            List of tuples (tag_id, tag_data, callsign).
        send_to_server : bool
            When True, send to the configured TAK server.
        send_to_multicast : bool
            When True, send to the multicast endpoint.
        """
        if not batch_messages:
            return

        host = tak_server_config.get('ip', '127.0.0.1')
        port = tak_server_config.get('port', 0)
        multicast_port = tak_server_config.get('multicast_port', 6969)

        sent_count = 0
        for tag_id, tag_data, callsign in batch_messages:
            try:
                try:
                    cot_message = self.create_cot_message(str(tag_id), tag_data, callsign)
                except Exception as e:
                    print(f"[ERROR] Exception in create_cot_message for tag {tag_id} (callsign: {callsign}): {e}\nData: {tag_data}")
                    continue
                if cot_message:
                    print(f"[COT XML for tag {tag_id}]:\n{cot_message.decode('utf-8', errors='replace')}")  # Print COT XML before sending

                    if send_to_server:
                        self.sock.sendto(cot_message, (host, port))

                    if send_to_multicast:
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
                else:
                    print(f"[ERROR] No COT XML generated for tag {tag_id} (callsign: {callsign}, data: {tag_data})")
            except Exception as e:
                print(f"Error sending tag {tag_id}: {e}")

        stats['udp_sends'] += sent_count
        stats['batch_sends'] += 1
        if sent_count > 0:
            dests = []
            if send_to_server:
                dests.append(f"{host}:{port}")
            if send_to_multicast:
                dests.append(f"multicast 239.2.3.1:{multicast_port}")
            dest_str = ' and '.join(dests)
            print(f"📤 Sent batch of {sent_count} messages to {dest_str}")
    
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

def tag_scheduler_loop():
    """Deterministically send tags to TAK server one by one"""
    print("🚀 Tag scheduler loop started")
    tak_client = OptimizedTAKClient()

    while True:
        with TAG_DATA_LOCK:
            has_pending = bool(tags_pending_send)
        if not has_pending:
            time.sleep(0.1)
            continue

        tdma_interval = tak_server_config.get('tdma_interval', 10)
        per_tag_delay = tdma_interval / 100.0 if tdma_interval >= 3 else 0.03
        cycle_start = time.time()
        for tag_id in range(1, 101):
            with TAG_DATA_LOCK:
                tag = tags_pending_send.pop(tag_id, None)
            if tag and not get_tag_staleness(tag):
                cfg = forwarding_config['tags'].get(str(tag_id), {})
                should_forward = cfg.get('forward', forwarding_config.get('forward_all', False))
                if should_forward:
                    tag_to_send = tag.copy()
                    tag_to_send['color'] = cfg.get('color', 'white')
                    tag_to_send['track_type'] = cfg.get('track_type', 'PAX')
                    callsign = cfg.get('callsign') or tag_id
                    tag_to_send['callsign'] = callsign
                    tak_client.send_batch([(tag_id, tag_to_send, callsign)], send_to_server=True, send_to_multicast=False)
            time.sleep(per_tag_delay)

        elapsed = time.time() - cycle_start
        if elapsed < tdma_interval:
            time.sleep(tdma_interval - elapsed)

def multicast_batch_loop():
    """Send a batch of all tags via multicast every configured interval"""
    print("🚀 Multicast batch loop started")
    tak_client = OptimizedTAKClient()
    while True:
        multicast_interval = tak_server_config.get('multicast_interval', 2)
        time.sleep(multicast_interval)  # Configurable interval for multicast
        if tak_server_config.get('disable_multicast', False):
            print("📡 Multicast disabled, skipping...")
            continue
        
        batch_messages = []
        with TAG_DATA_LOCK:
            tag_items = list(tag_data.items())
        
        print(f"📡 Preparing multicast batch with {len(tag_items)} total tags")
        
        stale_count = 0
        not_forwarded_count = 0
        added_count = 0
        
        for tag_id, tag in tag_items:
            if get_tag_staleness(tag):
                stale_count += 1
                continue
            cfg = forwarding_config['tags'].get(str(tag_id), {})
            should_forward = cfg.get('forward', forwarding_config.get('forward_all', False))
            if not should_forward:
                not_forwarded_count += 1
                continue
            tag_to_send = tag.copy()
            tag_to_send['color'] = cfg.get('color', 'white')
            tag_to_send['track_type'] = cfg.get('track_type', 'PAX')
            callsign = cfg.get('callsign') or str(tag_id)
            tag_to_send['callsign'] = callsign
            batch_messages.append((tag_id, tag_to_send, callsign))
            added_count += 1

        print(f"📡 Multicast filtering results: {len(tag_items)} total, {stale_count} stale, {not_forwarded_count} not forwarded, {added_count} added to batch")

        if batch_messages:
            print(f"📡 Sending multicast batch with {len(batch_messages)} tags")
            tak_client.send_batch(batch_messages, send_to_server=False, send_to_multicast=True)
        else:
            print("📡 No tags to send in multicast batch")

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
            # Note: setDTR, setRTS, flushInput, flushOutput are deprecated but still work
            # They're used for compatibility with older serial libraries
            try:
                ser.setDTR(True)
                ser.setRTS(True)
                ser.flushInput()
                ser.flushOutput()
            except AttributeError:
                # These methods might not be available in all pyserial versions
                pass
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
            callsign = str(tag_id)
        t['callsign'] = str(callsign)
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
    if 'tdma_interval' in data:
        try:
            tak_server_config['tdma_interval'] = int(data.get('tdma_interval'))
        except (TypeError, ValueError):
            pass
    if 'multicast_interval' in data:
        try:
            tak_server_config['multicast_interval'] = int(data.get('multicast_interval'))
        except (TypeError, ValueError):
            pass
    if 'disable_multicast' in data:
        val = data.get('disable_multicast')
        if isinstance(val, str):
            tak_server_config['disable_multicast'] = val.lower() in ('1', 'true', 'yes', 'on')
        else:
            tak_server_config['disable_multicast'] = bool(val)
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

@app.route('/database')
def database_page():
    return render_template('database.html')

@app.route('/api/db/tags')
def api_db_tags():
    # List all unique tag IDs in the database
    with atos_sqlite.get_db() as conn:
        rows = conn.execute('SELECT DISTINCT tag_id FROM tag_events WHERE tag_id IS NOT NULL ORDER BY tag_id').fetchall()
        tag_ids = [row['tag_id'] for row in rows]
    return jsonify(tag_ids)

@app.route('/api/db/tag_data')
def api_db_tag_data():
    # Query: ?tag_id=1,2,3&start=...&end=...&minutes=...
    tag_id_param = request.args.get('tag_id')
    if tag_id_param is None:
        return jsonify({'error': 'tag_id parameter is required'}), 400
    tag_ids = [int(tid) for tid in tag_id_param.split(',') if tid.strip().isdigit()]
    if not tag_ids:
        return jsonify({'error': 'No valid tag IDs provided'}), 400
    minutes = request.args.get('minutes')
    result = {}
    for tag_id in tag_ids:
        start = None
        if minutes:
            try:
                minutes_int = int(minutes)
                # Get the latest timestamp for this tag
                with atos_sqlite.get_db() as conn:
                    row = conn.execute('SELECT MAX(timestamp) as max_ts FROM tag_events WHERE tag_id=?', (tag_id,)).fetchone()
                    latest_ts = row['max_ts'] if row and row['max_ts'] else None
                if latest_ts:
                    latest_dt = dateparser.parse(latest_ts)
                    start_dt = latest_dt - timedelta(minutes=minutes_int)
                    start = start_dt.strftime('%Y-%m-%dT%H:%M:%S')
            except Exception as e:
                start = None
        q = 'SELECT timestamp, altitude_ft FROM tag_events WHERE tag_id=? AND altitude_ft IS NOT NULL'
        params = [tag_id]
        if start is not None and start != '':
            q += ' AND timestamp >= ?'
            params.append(str(start))
        q += ' ORDER BY timestamp'
        with atos_sqlite.get_db() as conn:
            rows = conn.execute(q, params).fetchall()
            data = [{'timestamp': row['timestamp'], 'altitude_ft': row['altitude_ft']} for row in rows]
        result[tag_id] = data
    return jsonify(result)

@app.route('/api/db/export_csv')
def api_db_export_csv():
    tag_id_param = request.args.get('tag_id')
    if tag_id_param is None:
        return jsonify({'error': 'tag_id parameter is required'}), 400
    tag_id = int(tag_id_param)
    start = request.args.get('start')
    end = request.args.get('end')
    dz_altitude = request.args.get('dz_altitude', type=float)
    q = 'SELECT timestamp, altitude_ft FROM tag_events WHERE tag_id=? AND altitude_ft IS NOT NULL'
    params = [tag_id]
    if start:
        q += ' AND timestamp >= ?'
        params.append(str(start))
    if end:
        q += ' AND timestamp <= ?'
        params.append(str(end))
    q += ' ORDER BY timestamp'
    with atos_sqlite.get_db() as conn:
        rows = conn.execute(q, params).fetchall()
    output = io.StringIO()
    writer = csv.writer(output)
    if dz_altitude is not None:
        writer.writerow(['timestamp', 'altitude_ft', 'altitude_agl'])
        for row in rows:
            agl = max(0, row['altitude_ft'] - dz_altitude)
            writer.writerow([row['timestamp'], row['altitude_ft'], agl])
    else:
        writer.writerow(['timestamp', 'altitude_ft'])
        for row in rows:
            writer.writerow([row['timestamp'], row['altitude_ft']])
    output.seek(0)
    filename = f"tag_{tag_id}_{start or 'all'}_{end or 'all'}.csv"
    response = make_response(output.read())
    response.headers['Content-Disposition'] = f'attachment; filename={filename}'
    response.headers['Content-Type'] = 'text/csv'
    return response

@app.route('/api/db/export_kml')
def api_db_export_kml():
    tag_id_param = request.args.get('tag_id')
    if tag_id_param is None:
        return jsonify({'error': 'tag_id parameter is required'}), 400
    tag_ids = [int(tid) for tid in tag_id_param.split(',') if tid.strip().isdigit()]
    if not tag_ids:
        return jsonify({'error': 'No valid tag IDs provided'}), 400
    start = request.args.get('start')
    end = request.args.get('end')
    dz_altitude = request.args.get('dz_altitude', type=float)
    selected_color = request.args.get('color', 'ff0000ff')  # Default to red if no color specified
    
    # Color palette matching the dropdown (Google Earth KML format: aabbggrr)
    colors = [
        'ff0000ff', # Red
        'ff00ff00', # Green
        'ffff0000', # Blue
        'ff00ffff', # Yellow
        'ffff00ff', # Magenta
        'ffffff00', # Cyan
        'ff008cff', # Orange
        'ff800080', # Purple
        'ffcc99ff', # Pink
        'ff336699', # Brown
        'ff888888', # Gray
        'ff000000', # Black
        'ffffffff', # White
        'ff00ff80', # Lime
        'ff808000', # Teal
        'ff008080', # Olive
        'ff800000', # Navy
        'ff000080', # Maroon
        'ffc0c0c0', # Silver
        'ff00d7ff', # Gold
        'ffdcdcdc', # Beige
        'ff507fff', # Coral
        'ff8234b0', # Indigo
        'ffb4a020', # Khaki
        'ffe6e6fa', # Lavender
        'ffbdfcc9', # Mint
        'ffaaddee', # Peach
        'ff7280fa', # Salmon
        'ffd0e040', # Turquoise
        'ffee82ee', # Violet
        'ff3c14dc', # Crimson
        'ffd4ff7f', # Aquamarine
        'ffdda0dd', # Plum
        'ffdb70db', # Orchid
        'ff1e69d2', # Chocolate
        'fffff0ff', # Azure
        'fff0ffff', # Ivory
        'fffafaff', # Snow
        'ff4763ff', # Tomato
        'ffb3def5', # Wheat
        'ff908070', # SlateGray
        'ff578b2e', # SeaGreen
        'ffffd700', # SkyBlue
        'ff7fff00', # SpringGreen
        'ff8cb4d2', # Tan
        'ffd8bfd8', # Thistle
        'ff8f8fbc', # RosyBrown
        'ff2d52a0', # Sienna
        'ffb469ff', # HotPink
        'ffffe0ff', # LightBlue
    ]
    kml_styles = []
    kml_placemarks = []
    with atos_sqlite.get_db() as conn:
        for idx, tag_id in enumerate(tag_ids):
            # For single tag export, use the selected color from dropdown
            # For multiple tag export, use unique colors from the palette
            if len(tag_ids) == 1:
                color = selected_color
            else:
                # Ensure each tag gets a unique color, cycling through the palette if needed
                color = colors[idx % len(colors)]
            style_id = f"lineStyle{tag_id}"
            kml_styles.append(f"""
    <Style id="{style_id}">
      <LineStyle>
        <color>{color}</color>
        <width>3</width>
      </LineStyle>
    </Style>""")
            q = 'SELECT longitude, latitude, altitude_ft, timestamp FROM tag_events WHERE tag_id=? AND altitude_ft IS NOT NULL AND latitude IS NOT NULL AND longitude IS NOT NULL'
            params = [tag_id]
            if start is not None and start != '':
                q += ' AND timestamp >= ?'
                params.append(str(start))
            if end is not None and end != '':
                q += ' AND timestamp <= ?'
                params.append(str(end))
            q += ' ORDER BY timestamp'
            rows = conn.execute(q, params).fetchall()
            if dz_altitude is not None:
                coords3d = '\n'.join(f"{row['longitude']},{row['latitude']},{max(0, row['altitude_ft'] - dz_altitude)}" for row in rows if row['latitude'] != 9999999.0 and row['longitude'] != 9999999.0)
            else:
                coords3d = '\n'.join(f"{row['longitude']},{row['latitude']},{row['altitude_ft']}" for row in rows if row['latitude'] != 9999999.0 and row['longitude'] != 9999999.0)
            whens = '\n'.join(f"<when>{row['timestamp'].replace(' ','T')}Z</when>" for row in rows)
            if dz_altitude is not None:
                gx_coords = '\n'.join(f"<gx:coord>{row['longitude']} {row['latitude']} {max(0, row['altitude_ft'] - dz_altitude)}</gx:coord>" for row in rows if row['latitude'] != 9999999.0 and row['longitude'] != 9999999.0)
            else:
                gx_coords = '\n'.join(f"<gx:coord>{row['longitude']} {row['latitude']} {row['altitude_ft']}</gx:coord>" for row in rows if row['latitude'] != 9999999.0 and row['longitude'] != 9999999.0)
            kml_placemarks.append(f"""
    <Placemark>
      <name>Tag {tag_id} Path</name>
      <styleUrl>#{style_id}</styleUrl>
      <LineString>
        <altitudeMode>relativeToGround</altitudeMode>
        <coordinates>
{coords3d}
        </coordinates>
      </LineString>
    </Placemark>
    <Placemark>
      <name>Tag {tag_id} Timed Track</name>
      <styleUrl>#{style_id}</styleUrl>
      <gx:MultiTrack>
        <gx:interpolate>1</gx:interpolate>
        <gx:Track>
          <gx:altitudeMode>absolute</gx:altitudeMode>
          {whens}
          {gx_coords}
        </gx:Track>
      </gx:MultiTrack>
    </Placemark>""")
    kml = f'''<?xml version="1.0" encoding="UTF-8"?>
<kml xmlns="http://www.opengis.net/kml/2.2" xmlns:gx="http://www.google.com/kml/ext/2.2">
  <Document>
    {''.join(kml_styles)}
    {''.join(kml_placemarks)}
  </Document>
</kml>'''
    filename = f"tags_{'_'.join(map(str, tag_ids))}_{start or 'all'}_{end or 'all'}.kml"
    response = make_response(kml)
    response.headers['Content-Disposition'] = f'attachment; filename={filename}'
    response.headers['Content-Type'] = 'application/vnd.google-earth.kml+xml'
    return response

@app.route('/admin/login', methods=['GET', 'POST'])
def admin_login():
    from flask import request, session, render_template_string, redirect, url_for
    error = None
    if request.method == 'POST':
        password = request.form.get('password')
        if password and hashlib.sha256(password.encode('utf-8')).hexdigest() == ADMIN_PASSWORD_HASH:
            session['admin_authenticated'] = True
            return redirect(url_for('admin_page'))
        else:
            error = 'Incorrect password.'
    return render_template_string('''
    <html><head><title>Admin Login</title></head><body style="font-family:sans-serif;background:#223366;color:#fff;text-align:center;padding-top:100px;">
    <h2>Admin Login</h2>
    {% if error %}<div style="color:#ff6666;">{{ error }}</div>{% endif %}
    <form method="post">
        <input type="password" name="password" placeholder="Admin Password" style="padding:10px;font-size:1.2em;" autofocus>
        <button type="submit" style="padding:10px 20px;font-size:1.2em;">Login</button>
    </form>
    </body></html>
    ''', error=error)

@app.route('/admin')
@admin_required
def admin_page():
    return render_template('admin.html')

@app.route('/api/admin/db_info')
@admin_required
def api_admin_db_info():
    try:
        with atos_sqlite.get_db() as conn:
            # Get total record count
            total_records = conn.execute('SELECT COUNT(*) as count FROM tag_events').fetchone()['count']
            # Get record count by tag_id (1-100 only)
            tag_counts = {}
            for tag_id in range(1, 101):
                count = conn.execute('SELECT COUNT(*) as count FROM tag_events WHERE tag_id = ?', (tag_id,)).fetchone()['count']
                if count > 0:
                    tag_counts[tag_id] = count
            # Get date range
            date_range = conn.execute('SELECT MIN(timestamp) as min_ts, MAX(timestamp) as max_ts FROM tag_events').fetchone()
            # Get database file size
            db_path = atos_sqlite.get_db_path()
            file_size = os.path.getsize(db_path) if os.path.exists(db_path) else 0
            # Get archived databases
            archive_dir = Path('database_archives')
            archive_dir.mkdir(exist_ok=True)
            archived_dbs = []
            for db_file in archive_dir.glob('*.db'):
                archived_dbs.append({
                    'name': db_file.name,
                    'size': os.path.getsize(db_file),
                    'modified': datetime.fromtimestamp(os.path.getmtime(db_file)).isoformat()
                })
            return jsonify({
                'total_records': total_records,
                'tag_counts': tag_counts,
                'date_range': {
                    'min': date_range['min_ts'],
                    'max': date_range['max_ts']
                },
                'file_size': file_size,
                'archived_databases': archived_dbs
            })
    except Exception as e:
        return jsonify({'error': str(e)}), 500

@app.route('/api/admin/download_db')
@admin_required
def api_admin_download_db():
    try:
        db_path = atos_sqlite.get_db_path()
        if not os.path.exists(db_path):
            return jsonify({'error': 'Database file not found'}), 404
        
        print(f"[ADMIN] Database download requested")
        return send_file(db_path, as_attachment=True, download_name=f'atos_tak_db_{datetime.now().strftime("%Y%m%d_%H%M%S")}.db')
    except Exception as e:
        print(f"[ADMIN] Error downloading database: {e}")
        return jsonify({'error': str(e)}), 500

@app.route('/api/admin/archive_db', methods=['POST'])
@admin_required
def api_admin_archive_db():
    try:
        db_path = atos_sqlite.get_db_path()
        if not os.path.exists(db_path):
            return jsonify({'error': 'Database file not found'}), 404
        
        # Create archive directory
        archive_dir = Path('database_archives')
        archive_dir.mkdir(exist_ok=True)
        
        # Create archive filename with timestamp
        timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
        archive_filename = f'atos_tak_db_archive_{timestamp}.db'
        archive_path = archive_dir / archive_filename
        
        # Copy database to archive
        import shutil
        shutil.copy2(db_path, archive_path)
        
        print(f"[ADMIN] Database archived to {archive_filename}")
        return jsonify({'message': f'Database archived successfully as {archive_filename}'})
    except Exception as e:
        print(f"[ADMIN] Error archiving database: {e}")
        return jsonify({'error': str(e)}), 500

@app.route('/api/admin/clear_db')
@admin_required
def api_admin_clear_db():
    try:
        with atos_sqlite.get_db() as conn:
            conn.execute('DELETE FROM tag_events')
            conn.commit()
        
        print(f"[ADMIN] Database cleared")
        return jsonify({'message': 'Database cleared successfully'})
    except Exception as e:
        print(f"[ADMIN] Error clearing database: {e}")
        return jsonify({'error': str(e)}), 500

@app.route('/api/admin/clear_old_data', methods=['POST'])
@admin_required
def api_admin_clear_old_data():
    try:
        data = request.get_json()
        days = data.get('days', 30)
        
        if not isinstance(days, int) or days < 1:
            return jsonify({'error': 'Invalid number of days'}), 400
        
        cutoff_date = datetime.now() - timedelta(days=days)
        cutoff_str = cutoff_date.strftime('%Y-%m-%d %H:%M:%S')
        
        with atos_sqlite.get_db() as conn:
            result = conn.execute('DELETE FROM tag_events WHERE timestamp < ?', (cutoff_str,))
            deleted_count = result.rowcount
            conn.commit()
        
        print(f"[ADMIN] Cleared {deleted_count} records older than {days} days")
        return jsonify({'message': f'Cleared {deleted_count} records older than {days} days'})
    except Exception as e:
        print(f"[ADMIN] Error clearing old data: {e}")
        return jsonify({'error': str(e)}), 500

@app.route('/api/admin/cleanup_invalid_tags')
@admin_required
def api_admin_cleanup_invalid_tags():
    try:
        with atos_sqlite.get_db() as conn:
            # Delete records with tag_id not in range 1-100
            result = conn.execute('DELETE FROM tag_events WHERE tag_id < 1 OR tag_id > 100')
            deleted_count = result.rowcount
            conn.commit()
        
        print(f"[ADMIN] Cleaned up {deleted_count} invalid tag records")
        return jsonify({'message': f'Cleaned up {deleted_count} invalid tag records'})
    except Exception as e:
        print(f"[ADMIN] Error cleaning up invalid tags: {e}")
        return jsonify({'error': str(e)}), 500

@app.route('/api/admin/download_archive/<filename>')
@admin_required
def api_admin_download_archive(filename):
    try:
        archive_dir = Path('database_archives')
        archive_path = archive_dir / filename
        
        if not archive_path.exists():
            return jsonify({'error': 'Archive file not found'}), 404
        
        print(f"[ADMIN] Archive download requested: {filename}")
        return send_file(archive_path, as_attachment=True, download_name=filename)
    except Exception as e:
        print(f"[ADMIN] Error downloading archive: {e}")
        return jsonify({'error': str(e)}), 500

@app.route('/api/admin/load_archive', methods=['POST'])
@admin_required
def api_admin_load_archive():
    try:
        data = request.get_json()
        filename = data.get('filename')
        action = data.get('action', 'merge')  # merge, overwrite
        
        if not filename:
            return jsonify({'error': 'Filename is required'}), 400
        
        archive_dir = Path('database_archives')
        archive_path = archive_dir / filename
        db_path = atos_sqlite.get_db_path()
        
        if not archive_path.exists():
            return jsonify({'error': 'Archive file not found'}), 404
        
        if action == 'overwrite':
            # Backup current database first
            backup_filename = f'atos_tak_db_backup_{datetime.now().strftime("%Y%m%d_%H%M%S")}.db'
            backup_path = archive_dir / backup_filename
            import shutil
            shutil.copy2(db_path, backup_path)
            
            # Overwrite current database
            shutil.copy2(archive_path, db_path)
            print(f"[ADMIN] Database overwritten with {filename}, backup saved as {backup_filename}")
            return jsonify({'message': f'Database overwritten with {filename}. Backup saved as {backup_filename}'})
        
        elif action == 'merge':
            # Merge archive into current database
            import sqlite3
            with sqlite3.connect(archive_path) as archive_conn:
                archive_conn.row_factory = sqlite3.Row
                with atos_sqlite.get_db() as current_conn:
                    # Get all records from archive
                    archive_records = archive_conn.execute('SELECT * FROM tag_events').fetchall()
                    
                    # Insert records that don't already exist (based on timestamp and tag_id)
                    merged_count = 0
                    for record in archive_records:
                        # Check if record already exists
                        existing = current_conn.execute(
                            'SELECT 1 FROM tag_events WHERE tag_id = ? AND timestamp = ?',
                            (record['tag_id'], record['timestamp'])
                        ).fetchone()
                        
                        if not existing:
                            current_conn.execute(
                                'INSERT INTO tag_events (tag_id, latitude, longitude, altitude_ft, timestamp, voltage, is_fresh) VALUES (?, ?, ?, ?, ?, ?, ?)',
                                (record['tag_id'], record['latitude'], record['longitude'], record['altitude_ft'], record['timestamp'], record['voltage'], record['is_fresh'])
                            )
                            merged_count += 1
                    
                    current_conn.commit()
            
            print(f"[ADMIN] Merged {merged_count} records from {filename}")
            return jsonify({'message': f'Merged {merged_count} records from {filename}'})
        
        else:
            return jsonify({'error': 'Invalid action. Use "merge" or "overwrite"'}), 400
            
    except Exception as e:
        print(f"[ADMIN] Error loading archive: {e}")
        return jsonify({'error': str(e)}), 500

@app.route('/api/admin/delete_archive/<filename>', methods=['DELETE'])
@admin_required
def api_admin_delete_archive(filename):
    try:
        archive_dir = Path('database_archives')
        archive_path = archive_dir / filename
        
        if not archive_path.exists():
            return jsonify({'error': 'Archive file not found'}), 404
        
        archive_path.unlink()
        print(f"[ADMIN] Archive deleted: {filename}")
        return jsonify({'message': f'Archive {filename} deleted successfully'})
    except Exception as e:
        print(f"[ADMIN] Error deleting archive: {e}")
        return jsonify({'error': str(e)}), 500

@app.route('/view_kml')
def view_kml():
    # Just render the template; JS will read query params from the URL
    return render_template('view_kml.html')

@app.route('/api/config/dz_altitude', methods=['GET'])
def get_dz_altitude():
    settings = load_settings()
    dz = settings.get('dz_altitude', 1893)
    return {'dz_altitude': dz}

@app.route('/api/config/dz_altitude', methods=['POST'])
def set_dz_altitude():
    data = request.get_json()
    dz = data.get('dz_altitude')
    if dz is None:
        return {'error': 'Missing dz_altitude'}, 400
    settings = load_settings()
    settings['dz_altitude'] = dz
    save_settings(settings)
    return {'dz_altitude': dz}

# Protect all admin API endpoints
def protect_admin_api():
    from flask import request
    if not check_admin_auth():
        return jsonify({'error': 'Admin authentication required'}), 401

for rule in list(app.url_map.iter_rules()):
    if rule.rule.startswith('/api/admin/'):
        view_func = app.view_functions[rule.endpoint]
        app.view_functions[rule.endpoint] = admin_required(view_func)

# ==== Signal handling ====
def signal_handler(sig, frame):
    print("\n🛑 Shutting down High-Volume ATOS TAK Forwarder...")
    # Signal threads to stop
    packet_queue.put(None)  # Shutdown signal
    sys.exit(0)

# ==== Main function ====
def main():
    print("🚀 APEX SHIELD - ATOS TAK Forwarder - TDMA Version")
    print("🔧 Deterministic tag scheduler with multicast batching")
    print("=" * 70)
    print("🏢 Company: APEX SHIELD")
    print("📡 System: ATOS Tag Tracking & TAK Integration")
    print("📊 Optimizations: Queue-based processing, UDP batching, efficient memory")
    print("🎯 Target: 100+ devices with high packet rates")
    print("⚡ Performance: Optimized for high-volume operations")
    print("💾 Memory: Efficient queues and data structures")
    print("🌐 Web interface: http://localhost:5000")
    print("📊 Dashboard: http://localhost:5000/display")
    print("📈 Database: http://localhost:5000/database")
    print("📈 Performance stats: http://localhost:5000/api/stats")
    
    signal.signal(signal.SIGINT, signal_handler)
    signal.signal(signal.SIGTERM, signal_handler)
    
    # Start worker threads
    print("🚀 Starting TDMA TAK Processor...")
    
    # Start packet processor thread
    print("🔧 Creating packet processor thread...")
    packet_thread = threading.Thread(target=packet_processor, daemon=True)
    packet_thread.start()
    print("✅ Packet processor thread created")
    
    # Start tag scheduler thread
    scheduler_thread = threading.Thread(target=tag_scheduler_loop, daemon=True)
    scheduler_thread.start()

    # Start multicast batch loop
    multicast_thread = threading.Thread(target=multicast_batch_loop, daemon=True)
    multicast_thread.start()
    
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
    atos_sqlite.init_db()
    main() 
