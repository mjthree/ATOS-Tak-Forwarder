import sqlite3
from pathlib import Path

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
    
    fields = [
        'timestamp','tag_id','latitude','longitude','altitude_ft','battery_voltage','temperature','pdop',
        'wire_status','object_status','emergency','is_fresh','bad_gps','tak_ip','tak_port','cot_xml','event_type'
    ]
    values = [kwargs.get(f) for f in fields]
    with get_db() as conn:
        conn.execute(f"""
            INSERT INTO tag_events ({','.join(fields)})
            VALUES ({','.join(['?']*len(fields))})
        """, values) 