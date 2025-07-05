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

def init_db():
    with get_db() as conn:
        conn.executescript(SCHEMA)

def insert_tag_event(**kwargs):
    # Only store data for tags 1-100
    tag_id = kwargs.get('tag_id')
    if tag_id is None or tag_id < 1 or tag_id > 100:
        return  # Skip invalid tag IDs
    timestamp = kwargs.get('timestamp')
    if not timestamp:
        timestamp = datetime.now().replace(microsecond=0).isoformat()
    else:
        # Truncate to second precision
        try:
            ts = datetime.fromisoformat(timestamp)
            timestamp = ts.replace(microsecond=0).isoformat()
        except Exception:
            pass
    # Round altitude_ft to one decimal place if present
    altitude_ft = kwargs.get('altitude_ft')
    if altitude_ft is not None:
        try:
            altitude_ft = round(float(altitude_ft), 1)
        except Exception:
            pass
    # Throttle: only write if at least 1 second since last write for this tag
    with _last_write_lock:
        last = _last_write_times.get(tag_id)
        try:
            ts = datetime.fromisoformat(timestamp)
        except Exception:
            ts = datetime.now()
        if last and (ts - last).total_seconds() < 1.0:
            return  # Skip this write
        _last_write_times[tag_id] = ts
    fields = [
        'timestamp','tag_id','latitude','longitude','altitude_ft','battery_voltage','temperature','pdop',
        'wire_status','object_status','emergency','is_fresh','bad_gps','tak_ip','tak_port','cot_xml','event_type'
    ]
    values = [
        timestamp if f == 'timestamp' else
        altitude_ft if f == 'altitude_ft' else
        kwargs.get(f) for f in fields
    ]
    with get_db() as conn:
        conn.execute(f"""
            INSERT INTO tag_events ({','.join(fields)})
            VALUES ({','.join(['?']*len(fields))})
        """, values)

def get_db_path():
    return str(DB_PATH) 