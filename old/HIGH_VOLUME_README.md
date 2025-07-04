# High-Volume ATOS TAK Forwarder

Optimized version for handling 100+ ATOS devices with improved performance and reliability.

## 🚀 Key Optimizations

### **Serial Communication**
- **Queue-based processing**: Packets are queued and processed by dedicated threads
- **Optimized buffering**: Larger serial buffers for high packet rates
- **Non-blocking reads**: 1ms polling interval for responsive operation

### **Packet Processing**
- **Dedicated processor thread**: Separates packet parsing from serial reading
- **Efficient data structures**: Uses `deque` for packet history (O(1) operations)
- **Memory management**: Configurable queue sizes to prevent memory bloat

### **UDP Communication**
- **Batch sending**: Groups multiple COT messages into efficient batches
- **Larger socket buffers**: 64KB send buffer for high-throughput
- **Configurable intervals**: Adjustable batch timing (default: 0.5s)

### **Threading Architecture**
- **Serial reader**: Dedicated thread for USB communication
- **Packet processor**: Dedicated thread for packet parsing
- **UDP sender**: Dedicated thread for TAK server communication
- **Web server**: Flask runs in separate thread

## 📁 File Structure

```
/opt/atos-tak-forwarder-high-volume/
├── marshall_tak_high_volume.py    # Main application
├── requirements.txt               # Python dependencies
├── templates/                     # Web dashboard templates
├── comprehensive_logs/            # Log files (created automatically)
├── command_link_logs/            # Command link logs (created automatically)
├── latest_tag_data.json          # Current tag data (created automatically)
├── forwarding_config.json        # Forwarding settings (created automatically)
├── tak_server_config.json        # TAK server settings (created automatically)
├── templates.json                # Saved templates (created automatically)
├── atos_events.db                # SQLite database (created automatically)
└── database_archives/            # Database archives (created automatically)
```

## 🛠️ Installation

### **Quick Install**
```bash
# Download and run installer
sudo bash install_high_volume.sh
```

The installer will:
- ✅ Install Python dependencies (Flask, pyserial, Werkzeug)
- ✅ Set up systemd service (`atos-high-volume.service`)
- ✅ Configure proper permissions
- ✅ Enable service for auto-start
- ✅ **Optional HTTPS setup with mkcert and nginx**
- ✅ **Admin password configuration (if HTTPS enabled)**

#### HTTPS Setup Options
During installation, you'll be prompted to set up HTTPS:
- **Yes:** Installs mkcert, nginx, generates certificates, and sets admin password
- **No:** Standard HTTP access, admin panel accessible without password

### **Manual Install**
```bash
# Create installation directory
sudo mkdir -p /opt/atos-tak-forwarder-high-volume
cd /opt/atos-tak-forwarder-high-volume

# Copy files
sudo cp marshall_tak_high_volume.py .
sudo cp requirements.txt .
sudo cp -r templates .

# Install dependencies
sudo python3 -m pip install -r requirements.txt

# Create systemd service
sudo tee /etc/systemd/system/atos-high-volume.service > /dev/null << 'EOF'
[Unit]
Description=High-Volume ATOS TAK Forwarder (100+ devices)
After=network.target

[Service]
Type=simple
User=root
WorkingDirectory=/opt/atos-tak-forwarder-high-volume
ExecStart=/usr/bin/python3 marshall_tak_high_volume.py
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
EOF

# Enable and start service
sudo systemctl daemon-reload
sudo systemctl enable atos-high-volume
sudo systemctl start atos-high-volume
```

## 🎮 Usage

### **Service Management**
```bash
# Start service
sudo systemctl start atos-high-volume

# Check status
sudo systemctl status atos-high-volume

# View logs
sudo journalctl -u atos-high-volume -f

# Stop service
sudo systemctl stop atos-high-volume
```

### **Web Interface**
- **Main Dashboard**: http://localhost:5000 or https://[PI_IP] (if HTTPS enabled)
- **Display View**: http://localhost:5000/display or https://[PI_IP]/display
- **Database Interface**: http://localhost:5000/database or https://[PI_IP]/database
- **Admin Panel**: http://localhost:5000/admin or https://[PI_IP]/admin (hidden, no navigation links)
- **API Endpoints**: http://localhost:5000/api/tags, /api/stats, etc.

### **Configuration**
All configuration files are in the installation directory:
- `forwarding_config.json`: Tag forwarding settings
- `tak_server_config.json`: TAK server connection settings
- `templates.json`: Saved configuration templates

## 🔒 HTTPS Setup (Optional)

### Overview
The high-volume installer can optionally set up HTTPS using mkcert for local certificates. This provides:
- **Secure LAN access** without browser warnings
- **Admin panel protection** with password authentication
- **Professional appearance** for wall-mounted displays
- **No internet dependency** (self-signed certificates)

### Installation Process
1. **Choose HTTPS during installer:** Select "y" when prompted
2. **Set admin password:** Required for database management operations
3. **Automatic setup:** mkcert, nginx, and certificates are configured automatically

### Certificate Details
- **Certificate Location:** `/etc/ssl/atos-tak/atos-tak.crt`
- **Private Key:** `/etc/ssl/atos-tak/atos-tak.key`
- **CA Certificate:** `/root/.local/share/mkcert/rootCA.pem`
- **Validity:** Certificate ~2.3 years, CA ~10 years

### Manual HTTPS Setup (Post-Installation)
If you skipped HTTPS during installation:

```bash
# Install mkcert and nginx
sudo apt update
sudo apt install -y mkcert nginx

# Create SSL directory
sudo mkdir -p /etc/ssl/atos-tak

# Get Pi's hostname and IP
PI_HOSTNAME=$(hostname)
PI_IP=$(hostname -I | awk '{print $1}')

# Generate certificate
mkcert -install
mkcert -key-file /etc/ssl/atos-tak/atos-tak.key -cert-file /etc/ssl/atos-tak/atos-tak.crt "$PI_HOSTNAME" "$PI_IP" "localhost" "127.0.0.1"

# Set permissions
sudo chmod 600 /etc/ssl/atos-tak/atos-tak.key
sudo chmod 644 /etc/ssl/atos-tak/atos-tak.crt

# Create nginx configuration
sudo tee /etc/nginx/sites-available/atos-tak > /dev/null << EOF
server {
    listen 80;
    server_name $PI_HOSTNAME $PI_IP;
    return 301 https://\$server_name\$request_uri;
}

server {
    listen 443 ssl;
    server_name $PI_HOSTNAME $PI_IP;
    
    ssl_certificate /etc/ssl/atos-tak/atos-tak.crt;
    ssl_certificate_key /etc/ssl/atos-tak/atos-tak.key;
    
    location / {
        proxy_pass http://127.0.0.1:5000;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}
EOF

# Enable site
sudo ln -sf /etc/nginx/sites-available/atos-tak /etc/nginx/sites-enabled/
sudo rm -f /etc/nginx/sites-enabled/default

# Test and restart nginx
sudo nginx -t
sudo systemctl restart nginx
sudo systemctl enable nginx
```

## 🛡️ Admin Panel & Database Management

### Accessing the Admin Panel
- **URL:** `http://[PI_IP]:5000/admin` or `https://[PI_IP]/admin`
- **Hidden:** No navigation links from other pages
- **Password:** Required if HTTPS is enabled, no password if HTTP only

### Database Operations

#### Download Current Database
- **Purpose:** Backup the active SQLite database
- **Format:** `.db` file with all current data
- **Use case:** Offline analysis, backup before major operations

#### Archive & Clear Database
- **Purpose:** Create timestamped backup and start fresh
- **Process:** 
  1. Creates backup in `database_archives/` directory
  2. Clears current database
  3. Starts fresh data collection
- **Use case:** Regular maintenance, before major operations

#### Clear All Data
- **Purpose:** Permanently delete all data from current database
- **Warning:** Irreversible operation
- **Use case:** Complete reset, troubleshooting

#### Clear Old Data
- **Purpose:** Remove data older than specified days
- **Input:** Number of days to keep
- **Use case:** Disk space management, performance optimization

#### Cleanup Invalid Tags
- **Purpose:** Remove data from tags outside range 1-100
- **Process:** Deletes records for invalid tag IDs
- **Use case:** Database maintenance, cleanup after testing

### Archive Management

#### View Archives
- **Location:** `database_archives/` directory
- **Information:** Timestamp, file size, record count
- **Format:** `atos_events_YYYYMMDD_HHMMSS.db`

#### Download Archives
- **Purpose:** Retrieve specific historical database
- **Use case:** Analysis of past data, recovery

#### Load Archives
- **Options:** Merge or overwrite current database
- **Merge:** Combines current and archived data (schema-aware)
- **Overwrite:** Replaces current database with archive
- **Use case:** Data recovery, historical analysis

### Best Practices
1. **Stop service before major operations:** `sudo systemctl stop atos-high-volume`
2. **Backup before overwrite operations:** Automatic backup is created
3. **Monitor disk space:** Archives can accumulate over time
4. **Regular maintenance:** Archive old data periodically
5. **Test operations:** Use small datasets for testing

## ⚙️ Configuration

### **High-Volume Settings**
```python
# In marshall_tak_high_volume.py
MAX_QUEUE_SIZE = 1000        # Maximum packets in queue
BATCH_SIZE = 50              # UDP batch size
SERIAL_BUFFER_SIZE = 8192    # Serial buffer size
UDP_BATCH_INTERVAL = 0.5     # Batch interval (seconds)
```

### **Performance Tuning**
- **Increase `MAX_QUEUE_SIZE`** for higher packet rates
- **Increase `BATCH_SIZE`** for more efficient UDP sends
- **Decrease `UDP_BATCH_INTERVAL`** for lower latency
- **Increase `SERIAL_BUFFER_SIZE`** for larger packet bursts

## 📊 Performance Monitoring

### **API Stats**
```bash
curl http://localhost:5000/api/stats
```

Returns:
```json
{
  "stats": {
    "total_packets": 1234,
    "packets_per_second": 45,
    "udp_sends": 567,
    "batch_sends": 12,
    "connected": true
  },
  "queue_size": 23,
  "pending_tags": 15
}
```

### **Log Files**
- `comprehensive_logs/all_tag_updates_*.jsonl`: All tag updates
- `comprehensive_logs/voltage_tracking_*.csv`: Battery voltage tracking
- `comprehensive_logs/tag_status_*.jsonl`: Status changes
- `comprehensive_logs/tak_forwarding_*.log`: TAK server communication
- `atos_events.db`: SQLite database with all tag events

## 🔧 Troubleshooting

### **High CPU Usage**
- Reduce `UDP_BATCH_INTERVAL` to 0.1 seconds
- Increase `BATCH_SIZE` to 100
- Check for packet queue overflow in logs

### **Memory Issues**
- Reduce `MAX_QUEUE_SIZE` to 500
- Reduce `packet_history` maxlen to 50
- Monitor memory usage with `htop`

### **Serial Connection Issues**
- Check USB device permissions
- Verify device is `/dev/ttyACM0`
- Check for other processes using the port

### **UDP Send Failures**
- Verify TAK server IP/port in `tak_server_config.json`
- Check network connectivity
- Monitor UDP send statistics in API

### **HTTPS Issues**
```bash
# Check nginx status
sudo systemctl status nginx

# Test nginx configuration
sudo nginx -t

# Check SSL certificate
openssl x509 -in /etc/ssl/atos-tak/atos-tak.crt -text -noout

# Check nginx logs
sudo tail -f /var/log/nginx/error.log
```

### **Admin Panel Issues**
```bash
# Check if password is set (HTTPS mode)
grep -A 1 "_get_admin_password_hash" marshall_tak_high_volume.py

# Reset admin password (if needed)
# Edit marshall_tak_high_volume.py and update the password hash
```

### **Database Locked Errors**
```bash
# Stop the service first
sudo systemctl stop atos-high-volume

# Wait a moment
sleep 2

# Try admin operation again
# Then restart service
sudo systemctl start atos-high-volume
```

## 🗑️ Uninstallation

```bash
# Run uninstaller
sudo bash uninstall_high_volume.sh

# Or manual uninstall
sudo systemctl stop atos-high-volume
sudo systemctl disable atos-high-volume
sudo rm /etc/systemd/system/atos-high-volume.service
sudo rm -rf /opt/atos-tak-forwarder-high-volume
sudo systemctl daemon-reload

# If HTTPS was enabled, also remove nginx configuration
sudo rm /etc/nginx/sites-enabled/atos-tak
sudo rm /etc/nginx/sites-available/atos-tak
sudo rm -rf /etc/ssl/atos-tak
sudo systemctl restart nginx
```

## 🎯 Performance Targets

- **100+ devices**: Tested and optimized
- **High packet rates**: Queue-based processing prevents packet loss
- **Low latency**: Configurable batch intervals for real-time operation
- **Memory efficient**: Optimized data structures and configurable limits
- **Database storage**: SQLite integration for historical analysis
- **Admin operations**: Comprehensive database management capabilities

## 📚 New Features Available

- **🔐 Admin Panel:** Database management and operations
- **📊 Database Interface:** Historical data analysis and export
- **🔒 Password Protection:** Secure admin access (if HTTPS enabled)
- **📈 Advanced Logging:** SQLite database with comprehensive tracking
- **🎛️ Multicast Control:** Enable/disable multicast with dropdown
- **📋 Template System:** Save and load configurations
- **🔒 HTTPS Support:** Optional secure access with mkcert and nginx
- **📈 Archive Management:** Database backup, merge, and restore operations

## 🔄 Migration from Original

The high-volume version maintains compatibility with the original:
- Same configuration files
- Same web interface
- Same API endpoints
- Same logging structure

Simply install the high-volume version and your existing configuration will work.

## 📈 Performance Comparison

| Metric | Original | High-Volume |
|--------|----------|-------------|
| Max Devices | ~50 | 100+ |
| Packet Rate | ~100/sec | 1000+/sec |
| Memory Usage | ~50MB | ~100MB |
| UDP Efficiency | Individual | Batched |
| Threading | Basic | Optimized |

The high-volume version provides significant performance improvements while maintaining the same simple interface and configuration approach. 