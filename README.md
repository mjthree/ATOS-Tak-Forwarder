# APEX SHIELD - ATOS TAK Forwarder - TDMA Version

A comprehensive system for forwarding ATOS tracker data to TAK servers with real-time web dashboard monitoring. Features deterministic TDMA scheduling for reliable tag transmission and multicast support for ATAK compatibility.

**Company:** APEX SHIELD  
**System:** ATOS Tag Tracking & TAK Integration

## 🚀 Features

### Core Functionality
- **TDMA Scheduling:** Deterministic tag transmission with configurable intervals (default: 2 seconds)
- **TAK Server Integration:** Forwards COT messages to TAK servers via UDP (default port: 8686)
- **Multicast Support:** Broadcasts to UDP 6969 for ATAK compatibility with configurable intervals
- **Real-time Web Dashboard:** Live monitoring with 10x10 grid display
- **Database Integration:** SQLite storage for historical data and analysis
- **Rate Limiting:** Per-tag rate limiting to prevent spam
- **Service Mode:** Runs as systemd service on Raspberry Pi
- **Configuration Persistence:** All settings persist across reboots via JSON config files
- **Admin Panel:** Hidden database management interface with password protection
- **HTTPS Support:** Optional secure access with mkcert and nginx
- **FullPageOS Integration:** Kiosk mode support for wall-mounted displays

### Web Interface Sites
- **Main Control:** `http://[PI_IP]:5000/` - Full configuration and monitoring interface
- **Display Dashboard:** `http://[PI_IP]:5000/display` - Clean 10x10 grid for wall mounting
- **Database Interface:** `http://[PI_IP]:5000/database` - Historical data analysis and export
- **Admin Panel:** `http://[PI_IP]:5000/admin` - Database management (hidden, no navigation links)
- **API Endpoints:** RESTful API for programmatic access

### Track Type Support
- **PAX** → Personnel (person icon in ATAK)
- **K9** → K9 (dog icon in ATAK)
- **VEHICLE** → Vehicle (vehicle icon in ATAK)
- **EQUIPMENT** → Equipment (equipment icon in ATAK)
- **MEDICAL** → Medical (medical icon in ATAK)
- **WEAPON** → Weapon (weapon icon in ATAK)
- **BOAT** → Boat (boat icon in ATAK)
- **UAS** → UAS (drone icon in ATAK)
- **FIXED_WING** → Fixed_Wing (airplane icon in ATAK)
- **ROTARY_WING** → Rotary_Wing (helicopter icon in ATAK)
- **CUSTOM** → Custom (custom icon in ATAK)
- **BUNDLE** → Bundle (bundle icon in ATAK)

### Color-Coded Status System
- **🟢 Green:** Tag active + battery ≥ 3.50V
- **🟡 Yellow:** Tag active + battery < 3.50V (or missing)
- **🔴 Red:** Tag stale (no recent updates)
- **⚫ Gray:** Tag not detected

## 📋 Prerequisites

### Hardware Requirements
- **Raspberry Pi** (3B+ or 4 recommended)
- **USB-to-Serial adapter** for ATOS receiver connection
- **Network connection** for TAK server communication
- **Display** (optional, for local dashboard viewing)

### Software Requirements
- **Raspberry Pi OS** (Raspbian) with Python 3.7+
- **Git** for repository management
- **Desktop environment** (for auto-browser launch)
- **TAK Server** (for receiving forwarded data)

## 🛠️ Installation

### Step 1: System Preparation
```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install required packages
sudo apt install git python3-venv python3-full python3-pip -y

# Add user to dialout group for serial access
sudo usermod -a -G dialout pi
```

### Step 2: Repository Setup
```bash
# Clone repository
cd /home/pi
git clone https://github.com/mjthree/ATOS-Tak-Forwarder.git
cd ATOS-Tak-Forwarder

# Pull latest changes
git pull origin main
```

### Step 3: TDMA Service Installation
```bash
# Run the TDMA installer
chmod +x install.sh
sudo ./install.sh
```

The installer will:
- ✅ Install Python dependencies (Flask, pyserial, Werkzeug)
- ✅ Set up systemd service (`atos-tdma.service`)
- ✅ Configure proper permissions
- ✅ Enable service for auto-start
- ✅ **Optional HTTPS setup with mkcert and nginx**
- ✅ **Admin password configuration (if HTTPS enabled)**

#### HTTPS Setup Options
During installation, you'll be prompted to set up HTTPS:
- **Yes:** Installs mkcert, nginx, generates certificates, and sets admin password
- **No:** Standard HTTP access, admin panel accessible without password

### Step 4: Configuration

#### Serial Port Configuration
```bash
# Find your serial port
ls /dev/tty*

# Common ports:
# /dev/ttyUSB0  - USB-to-Serial adapter
# /dev/ttyACM0  - Arduino-style device
# /dev/ttyAMA0  - Hardware serial (Pi 3 and earlier)
```

The script automatically uses `/dev/ttyACM0`. If different, edit the service file:
```bash
sudo nano /etc/systemd/system/atos-tdma.service
```

#### TAK Server Configuration
Edit the TAK server settings in the web interface or modify `tak_server_config.json`:
```json
{
  "ip": "192.168.1.100",
  "port": 8686,
  "multicast_port": 6969,
  "send_interval": 10,
  "tdma_interval": 2,
  "multicast_interval": 2,
  "disable_multicast": false
}
```

### Step 5: Service Management
```bash
# Start the service
sudo systemctl start atos-tdma

# Enable auto-start on boot
sudo systemctl enable atos-tdma

# Check status
sudo systemctl status atos-tdma

# View logs
sudo journalctl -u atos-tdma -f
```

## 🌐 Web Interface Access

### Dashboard URLs
- **Main Control:** `http://[PI_IP]:5000/` or `https://[PI_IP]` (if HTTPS enabled)
- **Display Dashboard:** `http://[PI_IP]:5000/display` or `https://[PI_IP]/display`
- **Database Interface:** `http://[PI_IP]:5000/database` or `https://[PI_IP]/database`
- **Admin Panel:** `http://[PI_IP]:5000/admin` or `https://[PI_IP]/admin` (hidden, no navigation links)
- **API Endpoint:** `http://[PI_IP]:5000/api/tags` or `https://[PI_IP]/api/tags`

### Finding Your Pi's IP
```bash
hostname -I
```

### Dashboard Features
- **Real-time Tag Monitoring:** Live updates every 2 seconds
- **Individual Tag Control:** Enable/disable forwarding per tag
- **Track Type Selection:** Choose appropriate icon for ATAK
- **Color Configuration:** Customize tag colors
- **Callsign Management:** Set friendly names for tags
- **Template System:** Save and load configurations
- **Statistics:** Performance metrics and packet counts
- **Database Analysis:** Historical data viewing and export
- **Multicast Control:** Enable/disable multicast with dropdown interface
- **Admin Panel:** Database management (hidden, access via `/admin` URL)

## 🔒 Enabling HTTPS with mkcert and nginx (LAN Only)

### Overview
The installer can optionally set up HTTPS using mkcert for local certificates. This provides:
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

### Trusting Certificates on Other Devices
To avoid browser warnings on other devices:

#### Windows
```bash
# Copy CA certificate from Pi
scp pi@[PI_IP]:/root/.local/share/mkcert/rootCA.pem .

# Double-click and install as "Trusted Root Certification Authority"
```

#### macOS
```bash
# Copy CA certificate from Pi
scp pi@[PI_IP]:/root/.local/share/mkcert/rootCA.pem .

# Double-click and add to System keychain
```

#### Linux
```bash
# Copy CA certificate from Pi
scp pi@[PI_IP]:/root/.local/share/mkcert/rootCA.pem .

# Install system-wide
sudo cp rootCA.pem /usr/local/share/ca-certificates/atos-tak-ca.crt
sudo update-ca-certificates
```

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

## 🖥️ Using with FullPageOS (Kiosk Mode)

### Overview
FullPageOS is a Raspberry Pi distribution that runs Chromium in kiosk mode, perfect for wall-mounted displays.

### Installation
1. **Download FullPageOS:** https://github.com/guysoft/FullPageOS
2. **Flash to SD card:** Use Raspberry Pi Imager or similar
3. **Configure network:** Set up WiFi or Ethernet
4. **Boot FullPageOS:** Insert SD card and power on

### Configuration
1. **Access FullPageOS:** Connect to the Pi via SSH or monitor
2. **Edit kiosk URL:** Modify the startup URL to point to your ATOS dashboard

```bash
# SSH into FullPageOS Pi
ssh pi@[FULLPAGEOS_IP]

# Edit the kiosk configuration
sudo nano /home/pi/.config/lxsession/LXDE-pi/autostart

# Replace the URL with your ATOS dashboard
# For HTTP:
@chromium-browser --kiosk http://[ATOS_PI_IP]:5000/display

# For HTTPS (if configured):
@chromium-browser --kiosk https://[ATOS_PI_IP]/display
```

### HTTPS with FullPageOS
If using HTTPS with mkcert:

1. **Copy CA certificate to FullPageOS:**
```bash
# From your computer, copy the CA cert
scp pi@[ATOS_PI_IP]:/root/.local/share/mkcert/rootCA.pem .

# Copy to FullPageOS
scp rootCA.pem pi@[FULLPAGEOS_IP]:~/
```

2. **Install CA certificate on FullPageOS:**
```bash
# SSH into FullPageOS
ssh pi@[FULLPAGEOS_IP]

# Install the CA certificate
sudo cp rootCA.pem /usr/local/share/ca-certificates/atos-tak-ca.crt
sudo update-ca-certificates

# Restart Chromium
sudo reboot
```

3. **Update kiosk URL to HTTPS:**
```bash
sudo nano /home/pi/.config/lxsession/LXDE-pi/autostart
# Change to: @chromium-browser --kiosk https://[ATOS_PI_IP]/display
```

### Troubleshooting FullPageOS
- **Certificate warnings:** Install the mkcert CA certificate
- **Network issues:** Check FullPageOS network configuration
- **Display issues:** Verify HDMI settings in FullPageOS config
- **Auto-refresh:** FullPageOS will automatically refresh the page

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

### Database Information Display
- **Record Counts:** Total and per-tag breakdown
- **File Sizes:** Current database and archive sizes
- **Date Ranges:** Oldest and newest data timestamps
- **Tag Statistics:** Visual grid showing record counts for tags 1-100

### Best Practices
1. **Stop service before major operations:** `sudo systemctl stop atos-tdma`
2. **Backup before overwrite operations:** Automatic backup is created
3. **Monitor disk space:** Archives can accumulate over time
4. **Regular maintenance:** Archive old data periodically
5. **Test operations:** Use small datasets for testing

### Troubleshooting Admin Operations

#### Database Locked Errors
```bash
# Stop the service first
sudo systemctl stop atos-tdma

# Wait a moment
sleep 2

# Try admin operation again
# Then restart service
sudo systemctl start atos-tdma
```

#### Schema Mismatch During Merge
- **Cause:** Different database schemas between current and archive
- **Solution:** Schema-aware merging automatically matches columns by name
- **Prevention:** Use archives from same version of the application

#### Archive Deletion Confirmation
```bash
# Check archives directory
ls -la database_archives/

# Verify before deletion
# Archives are permanently deleted when using Delete button
```

## 🔧 Configuration

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

### TAK Server Configuration (`tak_server_config.json`)
```json
{
  "ip": "192.168.1.100",
  "port": 8686,
  "multicast_port": 6969,
  "send_interval": 10,
  "tdma_interval": 2,
  "multicast_interval": 2,
  "disable_multicast": false
}
```

### TDMA Settings
- **tdma_interval:** Time in seconds for complete tag cycle (default: 2)
- **send_interval:** Time in seconds between TDMA cycles (default: 10)
- **multicast_interval:** Time in seconds between multicast broadcasts (default: 2)
- **TAG_RATE_LIMIT:** 1 second (minimum time between updates per tag)
- **STALE_SECONDS:** 60 seconds (when to mark tag as stale)

## 📊 Monitoring and Logs

### Log Files
- **SQLite Database:** Primary logging to `atos_events.db` (always enabled)
- **Comprehensive Logs:** `comprehensive_logs/all_tag_updates_*.jsonl` (disabled by default)
- **Voltage Tracking:** `comprehensive_logs/voltage_tracking_*.csv` (disabled by default)
- **Tag Status:** `comprehensive_logs/tag_status_*.jsonl` (disabled by default)
- **TAK Forwarding:** `comprehensive_logs/tak_forwarding_*.log` (disabled by default)

**Note:** File logging is disabled by default to reduce disk I/O. Only SQLite database logging is active. To re-enable file logging, edit `marshall_tak_tdma.py` and change `ENABLE_FILE_LOGGING = False` to `ENABLE_FILE_LOGGING = True`, then restart the service.

### Database Storage
- **SQLite Database:** Automatic storage of all tag events
- **Historical Analysis:** Track altitude, battery, and status changes
- **Export Options:** CSV and KML export for external analysis
- **Tag Filtering:** Only stores data for tags 1-100 (invalid tags automatically filtered)

### Viewing Logs
```bash
# Real-time service logs
sudo journalctl -u atos-tdma -f

# View last 50 log entries
sudo journalctl -u atos-tdma -n 50

# Check comprehensive logs
ls -la comprehensive_logs/

# Monitor multicast traffic (for debugging)
sudo tcpdump -i any -n udp port 6969 -X
```

## 🔄 Updates and Maintenance

### Updating the Forwarder
```bash
# Stop the service
sudo systemctl stop atos-tdma

# Pull latest changes
git pull origin main

# Restart the service
sudo systemctl start atos-tdma

# Check status
sudo systemctl status atos-tdma
```

### Backup Configuration
```bash
# Backup current configuration
cp forwarding_config.json forwarding_config_backup.json
cp tak_server_config.json tak_server_config_backup.json
```

### Certificate Renewal
```bash
# Check certificate expiration
openssl x509 -in /etc/ssl/atos-tak/atos-tak.crt -text -noout | grep "Not After"

# Renew certificate (if needed)
mkcert -key-file /etc/ssl/atos-tak/atos-tak.key -cert-file /etc/ssl/atos-tak/atos-tak.crt "$(hostname)" "$(hostname -I | awk '{print $1}')" "localhost" "127.0.0.1"

# Restart nginx
sudo systemctl restart nginx
```

## 🚨 Troubleshooting

### Service Won't Start
```bash
# Check service status
sudo systemctl status atos-tdma

# View detailed logs
sudo journalctl -u atos-tdma -n 50

# Check Python syntax
python3 -m py_compile marshall_tak_tdma.py
```

### Common Issues

#### 1. Serial Port Access
```bash
# Check if user is in dialout group
groups pi

# Add to dialout group if needed
sudo usermod -a -G dialout pi

# Reboot or logout/login
sudo reboot
```

#### 2. Port Already in Use
```bash
# Check what's using port 5000
sudo netstat -tlnp | grep :5000

# Kill process if needed
sudo kill -9 [PID]
```

#### 3. Permission Issues
```bash
# Fix ownership
sudo chown -R pi:pi /home/pi/ATOS-Tak-Forwarder/

# Fix permissions
sudo chmod +x marshall_tak_tdma.py
```

#### 4. Network/Firewall Issues
```bash
# Check firewall status
sudo ufw status

# Allow port 5000
sudo ufw allow 5000

# Check network connectivity
ping 8.8.8.8
```

#### 5. Multicast Issues
```bash
# Test multicast connectivity
sudo tcpdump -i any -n udp dst 239.2.3.1 and port 6969 -X

# Check if multicast is enabled
sudo systemctl status atos-tdma | grep multicast

# Verify multicast configuration in web interface
```

#### 6. HTTPS Issues
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

#### 7. Admin Panel Issues
```bash
# Check if password is set (HTTPS mode)
grep -A 1 "_get_admin_password_hash" marshall_tak_tdma.py

# Reset admin password (if needed)
# Edit marshall_tak_tdma.py and update the password hash
```

## 📡 TAK Integration

### COT Message Format
The forwarder sends standard CoT messages with custom ATOS extensions:
```xml
<event version="2.0" uid="atos-{tag_id}-60eabd39-32ed-436f-9a17-4a8add4d24fc" 
       type="a-f-G-U-C-I" time="{timestamp}" start="{timestamp}" 
       stale="{stale_time}" how="m-g" access="Undefined">
  <point lat="{lat}" lon="{lon}" hae="{alt}" ce="1.3" le="2.0"/>
  <detail>
    <track vspeed="0.0" course="270.0" slope="0.0" speed="0.2777777777777778"/>
    <link uid="ANDROID-3e844b3d264f49fb" type="a-f-G-U-C-I" 
          parent_callsign="ATOS Forwarder" relation="p-p"/>
    <contact callsign="{callsign}"/>
    <__atos color="{color}" tag_type="{track_type}" manifest="Course " 
            alarm="0" temp_c="{temp}" voltage="{battery}">
      <attributes PAX_Type="" Team_Frequency="" Special_Equipment="" 
                  Frequency="" Remark=""/>
    </__atos>
    <archive/>
  </detail>
</event>
```

### TDMA Scheduling
- **Deterministic:** Each tag gets a specific time slot
- **Configurable:** Adjustable cycle time via `tdma_interval` (default: 2 seconds)
- **Reliable:** Ensures all tags are transmitted regularly
- **Efficient:** Prevents packet collisions and ensures fair access

### Multicast Support
- **UDP 6969:** Standard ATAK multicast port
- **Address:** 239.2.3.1 (standard TAK multicast)
- **Configurable Interval:** User can set multicast broadcast interval (1-15 seconds, default: 2)
- **Independent Operation:** Multicast operates separately from TDMA scheduling
- **All Active Tags:** Sends all non-stale, forwarded tags in each multicast batch
- **Easy Control:** Simple dropdown interface to enable/disable multicast

## 🎯 Advanced Features

### Template System
Save and load different configurations:
- **Save:** Export current settings as template
- **Load:** Apply saved template
- **Delete:** Remove unused templates
- **Rename:** Organize templates

### API Endpoints
- `GET /api/tags` - Get all tag data
- `GET /api/stats` - Get system statistics
- `POST /api/tag/{id}/forward` - Enable/disable tag forwarding
- `POST /api/tag/{id}/callsign` - Set tag callsign
- `POST /api/tag/{id}/color` - Set tag color
- `POST /api/tag/{id}/track_type` - Set track type
- `GET /api/db/tags` - List all tags in database
- `GET /api/db/tag_data` - Get historical data for a tag

### Database Features
- **Historical Analysis:** View altitude trends over time
- **CSV Export:** Download data for external analysis
- **KML Export:** Create Google Earth compatible files
- **Time Range Selection:** Filter data by date/time
- **Ground Level Adjustment:** Calculate AGL altitudes

## 🔒 Security Considerations

### Network Security
- **Firewall:** Configure firewall rules appropriately
- **VLAN:** Consider isolating ATOS network
- **VPN:** Use VPN for remote access if needed

### Access Control
- **Local access:** Web interface accessible on local network
- **Admin authentication:** Password protection for database operations (HTTPS mode)
- **HTTPS:** Use reverse proxy for HTTPS in production
- **Certificate management:** Regular renewal of mkcert certificates

### Best Practices
- **Use HTTPS:** Enable mkcert for secure LAN access
- **Strong passwords:** Use complex admin passwords
- **Regular updates:** Keep system and certificates updated
- **Backup data:** Regular database archiving
- **Monitor access:** Check logs for unauthorized access

## 📞 Support

### Getting Help
1. **Check logs:** Always check service logs first
2. **Verify configuration:** Ensure all settings are correct
3. **Test connectivity:** Verify network and serial connections
4. **Restart service:** Often fixes temporary issues

### Common Commands Reference
```bash
# Service management
sudo systemctl start/stop/restart/status atos-tdma

# Log viewing
sudo journalctl -u atos-tdma -f

# Configuration backup
cp forwarding_config.json backup_$(date +%Y%m%d).json

# Quick status check
curl http://localhost:5000/api/stats

# Network connectivity test
ping [TAK_SERVER_IP]

# Multicast monitoring
sudo tcpdump -i any -n udp port 6969 -X

# HTTPS certificate check
openssl x509 -in /etc/ssl/atos-tak/atos-tak.crt -text -noout

# nginx status
sudo systemctl status nginx
sudo nginx -t
```

## 📝 Version History

### Current Version: TDMA Optimized with Admin Panel
- **Deterministic TDMA scheduling (2-second default interval)**
- **Multicast support with configurable intervals**
- **Database integration with SQLite storage**
- **Advanced rate limiting and packet processing**
- **Comprehensive logging and monitoring**
- **Web dashboard with database interface**
- **Hidden admin panel with password protection**
- **HTTPS support with mkcert and nginx**
- **FullPageOS kiosk mode integration**
- **TAK integration (default port 8686)**
- **Configuration persistence across reboots**
- **Improved multicast control interface**
- **Database management operations (archive, merge, clear)**
- **Template system for configuration management**

---

**Note:** This system is designed for reliable ATOS tracker environments with deterministic scheduling. The TDMA approach ensures fair access and prevents packet collisions. All configuration changes are automatically saved and persist across system reboots. The admin panel provides comprehensive database management capabilities for production deployments.

## 🔑 Changing the Admin Password (CLI Only)

The admin password for the hidden admin panel is stored as a SHA-256 hash in `marshall_tak_tdma.py`. For security, password changes must be performed via the command line (CLI) on the device itself.

### How to Change the Admin Password

1. **Stop the ATOS service:**
   ```bash
   sudo systemctl stop atos-tdma
   ```
2. **Run the following Python snippet to generate a new hash:**
   ```bash
   python3 -c "import hashlib; print(hashlib.sha256('NEWPASSWORD'.encode('utf-8')).hexdigest())"
   ```
   Replace `NEWPASSWORD` with your desired password.

3. **Edit `marshall_tak_tdma.py`:**
   ```bash
   nano marshall_tak_tdma.py
   ```
   Find the function:
   ```python
   def _get_admin_password_hash():
       return '...'
   ```
   Replace the value in `return '...'` with the new hash from step 2 (keep the quotes).

4. **Save and exit (`Ctrl+O`, `Enter`, `Ctrl+X`).**

5. **Restart the ATOS service:**
   ```bash
   sudo systemctl start atos-tdma
   ```

**Note:** The password is never stored in plain text. Only the hash is stored in the code. This method ensures only users with CLI access to the device can change the admin password.
