# ATOS TAK Forwarder - High-Volume Tracker System

A comprehensive system for forwarding ATOS tracker data to TAK servers with real-time web dashboard monitoring. Designed to handle 100+ devices with optimized performance, multicast support, and advanced rate limiting.

## 🚀 Features

### Core Functionality
- **High-Volume Processing:** Optimized for 100+ ATOS trackers simultaneously
- **TAK Server Integration:** Forwards COT messages to TAK servers via UDP/TCP
- **Multicast Support:** Broadcasts to UDP 6969 for ATAK compatibility
- **Real-time Web Dashboard:** Live monitoring with 10x10 grid display
- **Queue-based Processing:** Efficient packet handling with threading
- **Rate Limiting:** Per-tag rate limiting to prevent spam (like ATOS plugin)
- **Service Mode:** Runs as systemd service on Raspberry Pi

### Web Interface
- **Main Dashboard:** `http://[PI_IP]:5000/display` - Clean 10x10 grid for wall mounting
- **Control Interface:** `http://[PI_IP]:5000/` - Full configuration and monitoring
- **API Endpoints:** RESTful API for programmatic access
- **Real-time Updates:** Auto-refreshing data every 2 seconds

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
- **Raspberry Pi** (3B+ or 4 recommended for 100+ devices)
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

### Step 3: High-Volume Service Installation
```bash
# Run the high-volume installer
chmod +x install_high_volume.sh
sudo ./install_high_volume.sh
```

The installer will:
- ✅ Create Python virtual environment
- ✅ Install all dependencies (Flask, pyserial, Werkzeug)
- ✅ Set up systemd service (`atos-high-volume.service`)
- ✅ Configure proper permissions
- ✅ Create service directory at `/opt/atos-tak-forwarder-high-volume/`

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
sudo nano /etc/systemd/system/atos-high-volume.service
```

#### TAK Server Configuration
Edit the TAK server settings in the web interface or modify `tak_server_config.json`:
```json
{
  "ip": "192.168.1.100",
  "port": 8087,
  "multicast_port": 6969,
  "send_interval": 2
}
```

### Step 5: Service Management
```bash
# Start the service
sudo systemctl start atos-high-volume.service

# Enable auto-start on boot
sudo systemctl enable atos-high-volume.service

# Check status
sudo systemctl status atos-high-volume.service

# View logs
sudo journalctl -u atos-high-volume.service -f
```

## 🌐 Web Interface Access

### Dashboard URLs
- **Main Control:** `http://[PI_IP]:5000/`
- **Display Dashboard:** `http://[PI_IP]:5000/display`
- **API Endpoint:** `http://[PI_IP]:5000/api/tags`

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
  "port": 8087,
  "multicast_port": 6969,
  "send_interval": 2
}
```

### Performance Settings
- **TAG_RATE_LIMIT:** 2 seconds (minimum time between updates per tag)
- **UDP_BATCH_INTERVAL:** 2 seconds (how often to send batches)
- **BATCH_SIZE:** 10 (maximum tags per UDP batch)
- **STALE_SECONDS:** 30 seconds (when to mark tag as stale)

## 📊 Monitoring and Logs

### Log Files
- **Tag Updates:** `comprehensive_logs/tag_updates.log`
- **Voltage Tracking:** `comprehensive_logs/voltage_tracking.log`
- **Status Changes:** `comprehensive_logs/status_changes.log`
- **TAK Forwarding:** `comprehensive_logs/tak_forwarding.log`

### Viewing Logs
```bash
# Real-time tag updates
tail -f comprehensive_logs/tag_updates.log

# Battery voltage tracking
tail -f comprehensive_logs/voltage_tracking.log

# TAK forwarding activity
tail -f comprehensive_logs/tak_forwarding.log
```

### Service Logs
```bash
# View service logs
sudo journalctl -u atos-high-volume.service -f

# View last 50 log entries
sudo journalctl -u atos-high-volume.service -n 50
```

## 🔄 Updates and Maintenance

### Updating the Forwarder
```bash
# Stop the service
sudo systemctl stop atos-high-volume.service

# Pull latest changes
git pull origin main

# Copy updated files to service directory
sudo cp marshall_tak_high_volume.py /opt/atos-tak-forwarder-high-volume/
sudo cp templates/*.html /opt/atos-tak-forwarder-high-volume/templates/
sudo cp forwarding_config.json /opt/atos-tak-forwarder-high-volume/

# Restart the service
sudo systemctl start atos-high-volume.service

# Check status
sudo systemctl status atos-high-volume.service
```

### Backup Configuration
```bash
# Backup current configuration
cp forwarding_config.json forwarding_config_backup.json
cp tak_server_config.json tak_server_config_backup.json
```

## 🚨 Troubleshooting

### Service Won't Start
```bash
# Check service status
sudo systemctl status atos-high-volume.service

# View detailed logs
sudo journalctl -u atos-high-volume.service -n 50

# Check Python syntax
python3 -m py_compile marshall_tak_high_volume.py
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
sudo chown -R pi:pi /opt/atos-tak-forwarder-high-volume/

# Fix permissions
sudo chmod +x /opt/atos-tak-forwarder-high-volume/marshall_tak_high_volume.py
```

#### 4. Virtual Environment Issues
```bash
# Recreate virtual environment
cd /opt/atos-tak-forwarder-high-volume/
rm -rf venv
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
deactivate
```

#### 5. Network/Firewall Issues
```bash
# Check firewall status
sudo ufw status

# Allow port 5000
sudo ufw allow 5000

# Check network connectivity
ping 8.8.8.8
```

### Performance Issues

#### High CPU Usage
- Check number of active tags
- Monitor packet queue size
- Consider increasing rate limiting

#### Memory Issues
- Monitor memory usage: `free -h`
- Check for memory leaks in logs
- Restart service if needed

#### Network Issues
- Check TAK server connectivity
- Verify multicast is working
- Monitor UDP packet loss

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

### Multicast Support
- **UDP 6969:** Standard ATAK multicast port
- **Address:** 239.2.3.1 (standard TAK multicast)
- **Automatic:** All COT messages sent to both TAK server and multicast

### Rate Limiting
- **Per-tag:** 2-second minimum between updates (configurable)
- **Batch processing:** Efficient UDP batching
- **Queue management:** Prevents memory overflow

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

### Performance Monitoring
- **Active tags:** Number of currently tracked tags
- **Packet counts:** Total packets processed
- **Rate limiting:** Number of packets rate-limited
- **UDP sends:** Number of COT messages sent
- **Queue size:** Current packet queue depth

## 🔒 Security Considerations

### Network Security
- **Firewall:** Configure firewall rules appropriately
- **VLAN:** Consider isolating ATOS network
- **VPN:** Use VPN for remote access if needed

### Access Control
- **Local access:** Web interface accessible on local network
- **Authentication:** Consider adding authentication for production use
- **HTTPS:** Use reverse proxy for HTTPS in production

## 📞 Support

### Getting Help
1. **Check logs:** Always check service logs first
2. **Verify configuration:** Ensure all settings are correct
3. **Test connectivity:** Verify network and serial connections
4. **Restart service:** Often fixes temporary issues

### Common Commands Reference
```bash
# Service management
sudo systemctl start/stop/restart/status atos-high-volume.service

# Log viewing
sudo journalctl -u atos-high-volume.service -f

# Configuration backup
cp forwarding_config.json backup_$(date +%Y%m%d).json

# Quick status check
curl http://localhost:5000/api/stats

# Network connectivity test
ping [TAK_SERVER_IP]
```

## 📝 Version History

### Current Version: High-Volume Optimized
- **Optimized for 100+ devices**
- **Queue-based processing**
- **Multicast support**
- **Advanced rate limiting**
- **Comprehensive logging**
- **Web dashboard**
- **TAK integration**

### Previous Versions
- Basic ATOS tracker display
- Simple TAK forwarding
- Manual configuration

---

**Note:** This system is designed for high-volume ATOS tracker environments. For smaller deployments (< 10 devices), consider using the basic version for simplicity.
