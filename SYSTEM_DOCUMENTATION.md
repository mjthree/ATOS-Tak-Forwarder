# 📚 ATOS TAK Forwarder - System Documentation

## 📋 Table of Contents
1. [System Architecture](#system-architecture)
2. [Component Overview](#component-overview)
3. [Data Flow](#data-flow)
4. [API Reference](#api-reference)
5. [Configuration Reference](#configuration-reference)
6. [Database Schema](#database-schema)
7. [Performance Characteristics](#performance-characteristics)
8. [Security Model](#security-model)
9. [Development Guide](#development-guide)
10. [Integration Guide](#integration-guide)

---

**Note:** All exported data and UI displays use the America/Phoenix timezone (MST). The backend converts UTC timestamps before sending them.

## 🏗️ System Architecture

### Overview
The ATOS TAK Forwarder is a multi-threaded, event-driven system designed for high-performance real-time location tracking with TAK (Tactical Assault Kit) integration. It uses a modular architecture with separate components for data acquisition, processing, storage, and distribution.

### Architecture Diagram
```
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   ATOS Hardware │───▶│  Serial Reader  │───▶│ Packet Processor│
│   (USB Serial)  │    │   (Thread 1)    │    │   (Thread 2)    │
└─────────────────┘    └─────────────────┘    └─────────────────┘
                                                       │
                                                       ▼
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│   TAK Server    │◀───│  UDP Sender     │◀───│ Tag Scheduler   │
│   (UDP 8686)    │    │   (Thread 3)    │    │   (Thread 4)    │
└─────────────────┘    └─────────────────┘    └─────────────────┘
                                                       │
                                                       ▼
┌─────────────────┐    ┌─────────────────┐    ┌─────────────────┐
│ Multicast Group │◀───│ Multicast Loop  │◀───│   Web Interface │
│ (239.2.3.1:6969)│    │   (Thread 5)    │    │   (Flask App)   │
└─────────────────┘    └─────────────────┘    └─────────────────┘
                                                       │
                                                       ▼
                                              ┌─────────────────┐
                                              │ SQLite Database │
                                              │   (Storage)     │
                                              └─────────────────┘
```

### Threading Model
- **Thread 1**: Serial Reader - Continuous serial data acquisition
- **Thread 2**: Packet Processor - Packet parsing and validation
- **Thread 3**: UDP Sender - TAK server communication
- **Thread 4**: Tag Scheduler - TDMA timing and coordination
- **Thread 5**: Multicast Loop - Broadcast data distribution
- **Thread 6**: Flask Web Server - Management interface

### Data Flow
1. **Acquisition**: Serial data from ATOS hardware
2. **Processing**: Packet parsing and validation
3. **Storage**: SQLite database logging
4. **Distribution**: TAK server and multicast broadcasting
5. **Management**: Web interface for configuration and monitoring

---

## 🔧 Component Overview

### Core Components

#### 1. Serial Reader (`serial_reader()`)
```python
def serial_reader():
    """Continuous serial data acquisition from ATOS hardware"""
    # Connects to /dev/ttyACM0 (Linux) or COM port (Windows)
    # Reads data in chunks of SERIAL_BUFFER_SIZE (8192 bytes)
    # Extracts packets using extract_packets_from_buffer()
    # Queues packets for processing
```

**Key Features:**
- Automatic reconnection on connection loss
- Configurable baud rate (115200 default)
- Buffer management for high-volume data
- Error handling and logging

#### 2. Packet Processor (`packet_processor()`)
```python
def packet_processor():
    """Processes queued packets from serial reader"""
    # Dequeues packets from packet_queue
    # Parses 40-byte and 56-byte ATOS packets
    # Validates GPS coordinates and data integrity
    # Updates tag_data dictionary
    # Logs to SQLite database
```

**Packet Types:**
- **40-byte packets**: Basic location data
- **56-byte packets**: Extended data with additional fields

#### 3. Tag Scheduler (`tag_scheduler_loop()`)
```python
def tag_scheduler_loop():
    """TDMA-based tag scheduling and forwarding"""
    # Implements Time-Division Multiple Access
    # Manages tag timing and rate limiting
    # Prepares data for TAK server transmission
    # Handles stale tag detection
```

**TDMA Features:**
- Configurable intervals (1-20 seconds)
- Per-tag rate limiting
- Stale data detection (60-second threshold)
- Automatic tag cycling

#### 4. UDP Sender (`udp_batch_sender()`)
```python
def udp_batch_sender():
    """Sends batched data to TAK server"""
    # Creates COT (Cursor on Target) messages
    # Batches multiple tags for efficiency
    # Sends via UDP to configured TAK server
    # Handles network errors and retries
```

**COT Message Format:**
- XML-based TAK protocol
- Includes location, altitude, callsign
- Supports track types and colors
- Configurable precision and formatting

#### 5. Multicast Loop (`multicast_batch_loop()`)
```python
def multicast_batch_loop():
    """Broadcasts data to multicast group"""
    # Sends data to 239.2.3.1:6969
    # Configurable multicast intervals
    # Optional multicast disable
    # Network-efficient broadcasting
```

### Web Interface Components

#### 1. Main Dashboard (`/`)
- Real-time tag status display
- Configuration management
- Template system
- Tag forwarding controls

#### 2. Display Dashboard (`/display`)
- Interactive map visualization
- Real-time tracking display
- Chart and graph integration
- Export capabilities

#### 3. Database Interface (`/database`)
- Historical data viewing
- Data export (CSV, KML)
- Database management
- Archive system

#### 4. Performance Monitor (`/performance`)
- System health metrics
- Real-time performance data
- Historical trend analysis
- Alert system

#### 5. Log Viewer (`/logs`)
- Real-time log display
- Severity filtering
- Log file management
- Admin controls

---

## 📊 Data Flow

### 1. Data Acquisition Flow
```
ATOS Hardware → Serial Port → Buffer → Packet Extraction → Queue
```

**Steps:**
1. Serial data received from ATOS hardware
2. Data buffered in 8KB chunks
3. Packets extracted using pattern matching
4. Valid packets queued for processing

### 2. Data Processing Flow
```
Queue → Packet Parser → Validation → Tag Data Update → Database Log
```

**Steps:**
1. Packet dequeued from processing queue
2. Packet type determined (40 or 56 bytes)
3. Data parsed and validated
4. Tag data updated in memory
5. Event logged to SQLite database

### 3. Data Distribution Flow
```
Tag Data → TDMA Scheduler → COT Creation → TAK Server + Multicast
```

**Steps:**
1. Tag data scheduled by TDMA timing
2. COT messages created for each tag
3. Messages batched for efficiency
4. Sent to TAK server via UDP
5. Broadcast to multicast group

### 4. Management Flow
```
Web Interface → API Endpoints → Configuration → Service Updates
```

**Steps:**
1. User interacts with web interface
2. API endpoints process requests
3. Configuration files updated
4. Service behavior modified in real-time

---

## 🔌 API Reference

### Core API Endpoints

#### 1. Tag Management
```http
GET /api/tags
POST /api/tag/{tag_id}/forward
POST /api/tag/{tag_id}/callsign
POST /api/tag/{tag_id}/color
POST /api/tag/{tag_id}/track_type
```

#### 2. Configuration
```http
GET /api/tak_server
POST /api/tak_server
GET /api/forward_all
POST /api/forward_all
GET /api/templates
POST /api/templates
```

#### 3. Data Access
```http
GET /api/data
GET /api/stats
GET /api/db/tags
GET /api/db/tag_data
GET /api/db/export_csv
GET /api/db/export_kml
```

#### 4. Performance Monitoring
```http
GET /api/performance
GET /api/performance/history
```

#### 5. Log Management
```http
GET /api/logs
POST /api/logs/clear
GET /api/logs/download
```

### API Response Formats

#### Tag Data Response
```json
{
  "1": {
    "tag_id": "1",
    "latitude": 40.7128,
    "longitude": -74.0060,
    "altitude_ft": 125.5,
    "battery_voltage": 3.85,
    "timestamp": "2024-12-01T10:30:00Z",
    "stale": false,
    "forward": true,
    "color": "white",
    "callsign": "Alpha-1",
    "track_type": "PAX"
  }
}
```

#### Performance Metrics Response
```json
{
  "metrics": {
    "system_uptime": 3600,
    "memory_usage_mb": 45.2,
    "cpu_usage_percent": 12.5,
    "queue_utilization": 15.0,
    "packet_processing_rate": 25.3,
    "udp_send_rate": 10.1,
    "error_rate": 2.1,
    "active_connections": 15,
    "database_size_mb": 12.5,
    "disk_usage_percent": 45.2,
    "serial_connection_status": "connected",
    "tak_server_status": "connected",
    "multicast_status": "active"
  },
  "health_score": 85,
  "status": "healthy"
}
```

#### Statistics Response
```json
{
  "stats": {
    "total_packets": 15000,
    "last_update": "2024-12-01T10:30:00Z",
    "connected": true,
    "error": null,
    "packets_per_second": 25.3,
    "udp_sends": 5000,
    "batch_sends": 250,
    "rate_limited_packets": 150,
    "active_tags": 15
  },
  "queue_size": 25,
  "pending_tags": 5,
  "rate_limiting": {
    "tag_rate_limit_seconds": 2,
    "active_tags": 15,
    "rate_limited_packets": 150,
    "tdma_interval": 2
  }
}
```

---

## ⚙️ Configuration Reference

### TAK Server Configuration (`tak_server_config.json`)
```json
{
  "ip": "192.168.1.50",
  "port": 8686,
  "multicast_port": 6969,
  "send_interval": 10,
  "tdma_interval": 2,
  "multicast_interval": 2,
  "disable_multicast": false
}
```

**Parameters:**
- `ip`: TAK server IP address
- `port`: TAK server UDP port
- `multicast_port`: Multicast broadcast port
- `send_interval`: Seconds between TDMA cycles
- `tdma_interval`: Seconds for complete tag cycle
- `multicast_interval`: Seconds between multicast broadcasts
- `disable_multicast`: Disable multicast broadcasting

### Forwarding Configuration (`forwarding_config.json`)
```json
{
  "forward_all": true,
  "tags": {
    "1": {
      "forward": true,
      "color": "white",
      "callsign": "Alpha-1",
      "track_type": "PAX"
    }
  }
}
```

**Parameters:**
- `forward_all`: Global forwarding toggle
- `tags`: Per-tag configuration
  - `forward`: Individual tag forwarding
  - `color`: TAK display color
  - `callsign`: TAK callsign
  - `track_type`: TAK track type

### System Configuration (Environment Variables)
```bash
FLASK_ENV=production
FLASK_DEBUG=0
SERIAL_PORT=/dev/ttyACM0
TAK_SERVER_IP=192.168.1.50
TAK_SERVER_PORT=8686
MULTICAST_GROUP=239.2.3.1
MULTICAST_PORT=6969
LOG_LEVEL=INFO
```

### Performance Configuration (Code Constants)
```python
MAX_QUEUE_SIZE = 1000        # Maximum packet queue size
BATCH_SIZE = 50              # UDP batch size
SERIAL_BUFFER_SIZE = 8192    # Serial read buffer size
UDP_BATCH_INTERVAL = 0.5     # UDP batch interval (seconds)
STALE_SECONDS = 60           # Stale data threshold
```

---

## 🗄️ Database Schema

### Main Tables

#### 1. tag_events
```sql
CREATE TABLE tag_events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    tag_id TEXT NOT NULL,
    timestamp TEXT NOT NULL,
    latitude REAL,
    longitude REAL,
    altitude_ft REAL,
    battery_voltage REAL,
    bad_gps BOOLEAN,
    callsign TEXT,
    color TEXT,
    track_type TEXT,
    forward BOOLEAN,
    created_at TEXT DEFAULT CURRENT_TIMESTAMP
);
```

**Indexes:**
```sql
CREATE INDEX idx_timestamp ON tag_events(timestamp);
CREATE INDEX idx_tag_id ON tag_events(tag_id);
CREATE INDEX idx_tag_timestamp ON tag_events(tag_id, timestamp);
```

#### 2. system_events
```sql
CREATE TABLE system_events (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    event_type TEXT NOT NULL,
    message TEXT,
    severity TEXT,
    timestamp TEXT DEFAULT CURRENT_TIMESTAMP
);
```

### Database Operations

#### Insert Tag Event
```python
def log_tag_update(tag_data_entry):
    with atos_sqlite.get_db() as conn:
        conn.execute("""
            INSERT INTO tag_events 
            (tag_id, timestamp, latitude, longitude, altitude_ft, 
             battery_voltage, bad_gps, callsign, color, track_type, forward)
            VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """, (
            tag_data_entry['tag_id'],
            tag_data_entry['timestamp'],
            tag_data_entry['latitude'],
            tag_data_entry['longitude'],
            tag_data_entry['altitude_ft'],
            tag_data_entry['battery_voltage'],
            tag_data_entry['bad_gps'],
            tag_data_entry.get('callsign'),
            tag_data_entry.get('color', 'white'),
            tag_data_entry.get('track_type', 'PAX'),
            tag_data_entry.get('forward', True)
        ))
```

#### Query Tag History
```python
def get_tag_history(tag_id, start_time, end_time):
    with atos_sqlite.get_db() as conn:
        rows = conn.execute("""
            SELECT * FROM tag_events 
            WHERE tag_id = ? AND timestamp BETWEEN ? AND ?
            ORDER BY timestamp DESC
        """, (tag_id, start_time, end_time)).fetchall()
    return rows
```

---

## ⚡ Performance Characteristics

### Throughput Metrics
- **Packet Processing**: 100+ packets/second
- **Tag Capacity**: 100+ concurrent tags
- **UDP Sending**: 50+ messages/second
- **Database Writes**: 100+ events/second
- **Web Interface**: 1000+ requests/minute

### Resource Usage
- **Memory**: 50-200MB (depending on tag count)
- **CPU**: 5-20% (depending on activity)
- **Disk**: 1-10GB (depending on retention period)
- **Network**: 1-10 Mbps (depending on tag count)

### Scalability Factors
- **Tag Count**: Linear scaling up to 1000 tags
- **Update Frequency**: Configurable TDMA intervals
- **Data Retention**: Configurable database cleanup
- **Network Load**: Multicast reduces individual connections

### Performance Optimization
- **Queue Management**: Configurable buffer sizes
- **Batch Processing**: Efficient UDP batching
- **Database Indexing**: Optimized query performance
- **Memory Management**: Automatic cleanup and garbage collection

---

## 🔒 Security Model

### Authentication
- **Admin Access**: Password-based authentication
- **Session Management**: Flask session cookies
- **Password Hashing**: SHA-256 with salt

### Authorization
- **Public Endpoints**: Read-only data access
- **Admin Endpoints**: Configuration and management
- **Protected Operations**: Database modifications

### Network Security
- **Firewall Configuration**: UFW rules
- **Port Restrictions**: Minimal open ports
- **Network Isolation**: VLAN support
- **SSL/TLS**: HTTPS support (recommended)

### Data Security
- **File Permissions**: Restricted access
- **Database Encryption**: SQLite encryption (optional)
- **Log Sanitization**: Sensitive data filtering
- **Backup Encryption**: Encrypted backups

### Security Best Practices
1. **Change Default Passwords**
2. **Use HTTPS in Production**
3. **Restrict Network Access**
4. **Regular Security Updates**
5. **Monitor Access Logs**

---

## 👨‍💻 Development Guide

### Development Environment Setup
```bash
# Clone repository
git clone [repository-url]
cd atos-tak-forwarder

# Create virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Install development dependencies
pip install pytest pytest-cov black flake8

# Run tests
pytest tests/

# Code formatting
black marshall_tak_tdma.py
flake8 marshall_tak_tdma.py
```

### Code Structure
```
atos-tak-forwarder/
├── marshall_tak_tdma.py      # Main application
├── atos_sqlite.py           # Database operations
├── requirements.txt         # Python dependencies
├── templates/              # HTML templates
│   ├── index.html
│   ├── display.html
│   ├── database.html
│   ├── performance.html
│   └── logs.html
├── static/                 # Static assets
├── tests/                  # Test suite
├── docs/                   # Documentation
└── scripts/                # Utility scripts
```

### Adding New Features
1. **Backend Changes**: Modify `marshall_tak_tdma.py`
2. **Database Changes**: Update `atos_sqlite.py`
3. **Frontend Changes**: Modify HTML templates
4. **API Changes**: Add new endpoints
5. **Testing**: Add unit tests
6. **Documentation**: Update relevant docs

### Testing Strategy
- **Unit Tests**: Individual component testing
- **Integration Tests**: End-to-end testing
- **Performance Tests**: Load and stress testing
- **Security Tests**: Vulnerability assessment

---

## 🔗 Integration Guide

### TAK Server Integration
```python
# COT Message Format
cot_message = f"""<?xml version="1.0" encoding="UTF-8"?>
<event version="2.0" uid="{tag_id}" type="a-f-G-U-C" 
       time="{timestamp}" start="{timestamp}" stale="{stale_time}"
       how="m-g">
  <point lat="{latitude}" lon="{longitude}" hae="{altitude}" ce="9999999.0" le="9999999.0"/>
  <detail>
    <contact callsign="{callsign}"/>
    <uid Droid="{callsign}"/>
    <__group name="Cyan" role="Team Member"/>
    <status readiness="true"/>
    <takv platform="ATAK-CIV" version="4.2.0.0" os="29"/>
    <track course="{course}" speed="{speed}"/>
  </detail>
</event>"""
```

### Multicast Integration
```python
# Multicast Configuration
MULTICAST_GROUP = "239.2.3.1"
MULTICAST_PORT = 6969

# Multicast Socket Setup
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM, socket.IPPROTO_UDP)
sock.setsockopt(socket.IPPROTO_IP, socket.IP_MULTICAST_TTL, 2)
sock.sendto(data, (MULTICAST_GROUP, MULTICAST_PORT))
```

### External System Integration
```python
# Webhook Integration
def send_webhook(data):
    requests.post(webhook_url, json=data, timeout=5)

# REST API Integration
def api_integration():
    response = requests.get(api_url, headers=headers)
    return response.json()

# Database Integration
def external_db_sync():
    # Sync with external database
    pass
```

### Monitoring Integration
```python
# Prometheus Metrics
from prometheus_client import Counter, Gauge, Histogram

packets_processed = Counter('atos_packets_processed_total', 'Total packets processed')
active_tags = Gauge('atos_active_tags', 'Number of active tags')
processing_time = Histogram('atos_processing_duration_seconds', 'Packet processing time')
```

---

## 📈 Monitoring and Alerting

### Key Metrics
- **System Health Score**: 0-100 overall health
- **Packet Processing Rate**: Packets per second
- **Memory Usage**: MB of RAM used
- **CPU Usage**: Percentage of CPU
- **Queue Utilization**: Percentage of queue full
- **Error Rate**: Percentage of errors
- **Active Tags**: Number of active tags

### Alert Thresholds
- **Critical**: Health score < 50
- **Warning**: Health score < 80
- **Memory**: > 500MB usage
- **Queue**: > 80% utilization
- **Errors**: > 10% error rate
- **Disk**: > 90% usage

### Logging Strategy
- **Application Logs**: Rotating file logs
- **System Logs**: Journalctl integration
- **Performance Logs**: Metrics collection
- **Error Logs**: Exception tracking
- **Audit Logs**: Security events

---

**Version**: 2.0  
**Last Updated**: December 2024  
**Compatibility**: ATOS TAK Forwarder v2.0+  
**License**: [Your License] 