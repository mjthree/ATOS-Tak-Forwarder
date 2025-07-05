import sqlite3
from pathlib import Path
import threading
from datetime import datetime

DB_PATH = Path('atos_data.db')

SCHEMA = '''
CREATE TABLE IF NOT EXISTS tag_events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    timestamp TEXT,
    tag_id INTEGER,
    latitude REAL,
    longitude REAL,
    altitude_ft REAL,
    battery_voltage REAL,
    temperature REAL,
    pdop REAL,
    wire_status TEXT,
    object_status TEXT,
    emergency INTEGER,
    is_fresh INTEGER,
    bad_gps INTEGER,
    tak_ip TEXT,
    tak_port INTEGER,
    cot_xml TEXT,
    event_type TEXT
);
CREATE INDEX IF NOT EXISTS idx_tag_time ON tag_events (tag_id, timestamp);
'''

# In-memory cache for last write time per tag_id
_last_write_times = {}
_last_write_lock = threading.Lock()

def get_db():
    conn = sqlite3.connect(DB_PATH)
    conn.row_factory = sqlite3.Row
    return conn

def ensure_latest_index():
    with get_db() as conn:
        conn.execute('CREATE INDEX IF NOT EXISTS idx_tag_latest ON tag_events(tag_id, timestamp DESC);')

def init_db():
    with get_db() as conn:
        conn.executescript(SCHEMA)
    ensure_latest_index()

def insert_tag_event(**kwargs):
    # Only store data for tags 1-100
    tag_id = kwargs.get('tag_id')
    if tag_id is None or tag_id < 1 or tag_id > 100:
        return  # Skip invalid tag IDs
    timestamp = kwargs.get('timestamp')
    if not timestamp:
        timestamp = datetime.utcnow().replace(microsecond=int(datetime.utcnow().microsecond/1000)*1000).isoformat(timespec='milliseconds') + 'Z'
    else:
        try:
            # Ensure timestamp is in UTC format
            if timestamp.endswith('Z'):
                ts = datetime.fromisoformat(timestamp[:-1])
            else:
                ts = datetime.fromisoformat(timestamp.replace(' ','T'))
            ts = ts.replace(microsecond=int(ts.microsecond/1000)*1000)
            timestamp = ts.isoformat(timespec='milliseconds') + 'Z'
        except Exception:
            # If parsing fails, use current UTC time
            timestamp = datetime.utcnow().replace(microsecond=int(datetime.utcnow().microsecond/1000)*1000).isoformat(timespec='milliseconds') + 'Z'
    # Strict type validation/coercion
    def safe_float(val):
        return float(val) if val not in (None, "") else None
    def safe_int(val):
        return int(val) if val not in (None, "") else None
    def safe_str(val):
        return str(val) if val not in (None, "") else None
    try:
        alt_val = safe_float(kwargs.get('altitude_ft'))
        values = {
            'timestamp': timestamp,
            'tag_id': safe_int(tag_id),
            'latitude': safe_float(kwargs.get('latitude')),
            'longitude': safe_float(kwargs.get('longitude')),
            'altitude_ft': round(alt_val, 1) if alt_val is not None else None,
            'battery_voltage': safe_float(kwargs.get('battery_voltage')),
            'temperature': safe_float(kwargs.get('temperature')),
            'pdop': safe_float(kwargs.get('pdop')),
            'wire_status': safe_str(kwargs.get('wire_status')),
            'object_status': safe_str(kwargs.get('object_status')),
            'emergency': safe_int(kwargs.get('emergency')),
            'is_fresh': safe_int(kwargs.get('is_fresh')),
            'bad_gps': safe_int(kwargs.get('bad_gps')),
            'tak_ip': safe_str(kwargs.get('tak_ip')),
            'tak_port': safe_int(kwargs.get('tak_port')),
            'cot_xml': safe_str(kwargs.get('cot_xml')),
            'event_type': safe_str(kwargs.get('event_type')),
        }
    except Exception as e:
        print(f"[ERROR] insert_tag_event: type validation failed: {e}")
        return  # Skip this record
    # Throttle: only write if at least 1 second since last write for this tag
    with _last_write_lock:
        last = _last_write_times.get(tag_id)
        try:
            ts = datetime.fromisoformat(timestamp.replace('Z','').replace(' ','T'))
        except Exception:
            ts = datetime.utcnow()
        if last and (ts - last).total_seconds() < 1.0:
            return  # Skip this write
        _last_write_times[tag_id] = ts
    fields = [
        'timestamp','tag_id','latitude','longitude','altitude_ft','battery_voltage','temperature','pdop',
        'wire_status','object_status','emergency','is_fresh','bad_gps','tak_ip','tak_port','cot_xml','event_type'
    ]
    insert_values = [values[f] for f in fields]
    with get_db() as conn:
        conn.execute(f"""
            INSERT INTO tag_events ({','.join(fields)})
            VALUES ({','.join(['?']*len(fields))})
        """, insert_values)

def get_db_path():
    return str(DB_PATH) 