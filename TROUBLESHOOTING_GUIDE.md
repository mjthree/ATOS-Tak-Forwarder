# 🔍 ATOS TAK Forwarder - Troubleshooting Guide

## 📋 Table of Contents
1. [Quick Diagnostic Checklist](#quick-diagnostic-checklist)
2. [Service Issues](#service-issues)
3. [Serial Connection Problems](#serial-connection-problems)
4. [Network Issues](#network-issues)
5. [Performance Problems](#performance-problems)
6. [Database Issues](#database-issues)
7. [Web Interface Problems](#web-interface-problems)
8. [Log Analysis](#log-analysis)
9. [Emergency Procedures](#emergency-procedures)
10. [Contact Support](#contact-support)

---

## ⚡ Quick Diagnostic Checklist

### Before Starting Troubleshooting
- [ ] Check if service is running: `sudo systemctl status atos-tdma`
- [ ] Verify network connectivity: `ping 8.8.8.8`
- [ ] Check disk space: `df -h`
- [ ] Verify memory usage: `free -h`
- [ ] Check recent logs: `sudo journalctl -u atos-tdma -n 20`

### Common Quick Fixes
```bash
# Restart service
sudo systemctl restart atos-tdma

# Check service logs
sudo journalctl -u atos-tdma -f

# Verify file permissions
ls -la /opt/atos-forwarder/

# Test web interface
curl http://localhost:5000/api/stats
```

---

## 🔧 Service Issues

### Service Won't Start

#### Symptoms
- `systemctl start atos-tdma` fails
- Service shows as "failed" or "inactive"
- No error messages in logs

#### Diagnosis
```bash
# Check service status
sudo systemctl status atos-tdma

# View detailed logs
sudo journalctl -u atos-tdma -n 50

# Check file permissions
ls -la /opt/atos-forwarder/
sudo chown -R atos:atos /opt/atos-forwarder/

# Test manual startup
cd /opt/atos-forwarder
source venv/bin/activate
python marshall_tak_tdma.py
```

#### Solutions

**1. Permission Issues**
```bash
# Fix ownership
sudo chown -R atos:atos /opt/atos-forwarder/

# Fix permissions
chmod +x marshall_tak_tdma.py
chmod 600 *.json *.db
chmod 755 templates/
chmod 644 templates/*.html

# Add user to dialout group (for serial access)
sudo usermod -a -G dialout atos
```

**2. Python Environment Issues**
```bash
# Recreate virtual environment
cd /opt/atos-forwarder
rm -rf venv
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# Check Python version
python --version  # Should be 3.8+
```

**3. Missing Dependencies**
```bash
# Install system dependencies
sudo apt update
sudo apt install -y python3-pip python3-venv pyserial psutil

# Install Python dependencies
source venv/bin/activate
pip install -r requirements.txt
```

**4. Configuration File Issues**
```bash
# Check configuration files
cat tak_server_config.json | python -m json.tool
cat forwarding_config.json | python -m json.tool

# Recreate default configs if corrupted
rm tak_server_config.json forwarding_config.json
python marshall_tak_tdma.py  # Will recreate default configs
```

### Service Crashes Repeatedly

#### Symptoms
- Service starts but crashes after a few minutes
- High error rate in logs
- Memory or CPU spikes before crash

#### Diagnosis
```bash
# Check for memory leaks
sudo journalctl -u atos-tdma | grep -i "memory\|error\|exception"

# Monitor resource usage
htop -p $(pgrep -f marshall_tak_tdma)

# Check for file descriptor leaks
lsof -p $(pgrep -f marshall_tak_tdma)
```

#### Solutions

**1. Memory Issues**
```bash
# Increase system memory limits
sudo nano /etc/systemd/system/atos-tdma.service

# Add to [Service] section:
MemoryMax=2G
MemoryLimit=1G

# Reload and restart
sudo systemctl daemon-reload
sudo systemctl restart atos-tdma
```

**2. Database Lock Issues**
```bash
# Check for database locks
sqlite3 atos_events.db "PRAGMA busy_timeout = 30000;"

# Rebuild database indexes
sqlite3 atos_events.db "REINDEX;"

# Check database integrity
sqlite3 atos_events.db "PRAGMA integrity_check;"
```

---

## 🔌 Serial Connection Problems

### No Serial Device Found

#### Symptoms
- "could not open port '/dev/ttyACM0'" errors
- No ATOS hardware detected
- Serial connection status shows "disconnected"

#### Diagnosis
```bash
# Check for USB devices
lsusb

# Check for serial devices
ls -la /dev/tty*

# Check device permissions
ls -la /dev/ttyACM0

# Test serial connection
sudo apt install minicom
minicom -D /dev/ttyACM0 -b 115200
```

#### Solutions

**1. Device Not Recognized**
```bash
# Check USB drivers
sudo apt install linux-modules-extra-$(uname -r)

# Reload USB modules
sudo modprobe -r usbserial
sudo modprobe usbserial

# Check kernel messages
dmesg | grep -i usb
```

**2. Permission Issues**
```bash
# Add user to dialout group
sudo usermod -a -G dialout atos

# Set device permissions
sudo chmod 666 /dev/ttyACM0

# Create udev rule for persistent permissions
sudo nano /etc/udev/rules.d/99-atos-serial.rules

# Add content:
SUBSYSTEM=="tty", ATTRS{idVendor}=="[YOUR_VENDOR_ID]", ATTRS{idProduct}=="[YOUR_PRODUCT_ID]", MODE="0666", GROUP="dialout"

# Reload udev rules
sudo udevadm control --reload-rules
sudo udevadm trigger
```

**3. Wrong Device Path**
```bash
# Find correct device path
ls -la /dev/ttyUSB* /dev/ttyACM*

# Update configuration
nano tak_server_config.json
# Change serial_port to correct device

# Or set environment variable
export SERIAL_PORT=/dev/ttyUSB0
```

### Serial Data Corruption

#### Symptoms
- Garbled data in logs
- Invalid GPS coordinates
- Packet parsing errors

#### Solutions

**1. Baud Rate Issues**
```bash
# Test different baud rates
minicom -D /dev/ttyACM0 -b 9600
minicom -D /dev/ttyACM0 -b 115200
minicom -D /dev/ttyACM0 -b 230400
```

**2. Hardware Flow Control**
```bash
# Disable hardware flow control in code
# Edit marshall_tak_tdma.py serial configuration
ser = serial.Serial(port, baudrate=115200, timeout=1, xonxoff=False, rtscts=False, dsrdtr=False)
```

**3. Cable Issues**
```bash
# Test with different USB cable
# Check cable length (keep under 3m)
# Use USB 2.0 ports instead of USB 3.0
```

---

## 🌐 Network Issues

### TAK Server Connection Problems

#### Symptoms
- "Connection refused" errors
- No data reaching TAK server
- High packet loss

#### Diagnosis
```bash
# Test network connectivity
ping 192.168.1.50

# Test port connectivity
telnet 192.168.1.50 8686
nc -u 192.168.1.50 8686

# Check firewall rules
sudo ufw status
sudo iptables -L

# Test with netcat
nc -u 192.168.1.50 8686
```

#### Solutions

**1. Firewall Issues**
```bash
# Allow TAK server traffic
sudo ufw allow from 192.168.1.0/24 to any port 8686
sudo ufw allow from 192.168.1.0/24 to any port 6969

# Check UFW status
sudo ufw status numbered
```

**2. Network Configuration**
```bash
# Check network configuration
ip addr show
ip route show

# Test DNS resolution
nslookup your-tak-server.com

# Check MTU settings
ping -s 1472 192.168.1.50
```

**3. TAK Server Issues**
```bash
# Verify TAK server is running
ssh user@192.168.1.50 "systemctl status tak-server"

# Check TAK server logs
ssh user@192.168.1.50 "tail -f /var/log/tak-server.log"

# Test TAK server directly
echo "test" | nc -u 192.168.1.50 8686
```

### Multicast Issues

#### Symptoms
- Multicast packets not reaching clients
- "No route to host" errors
- Multicast status shows "inactive"

#### Diagnosis
```bash
# Check multicast routing
netstat -rn | grep 239

# Test multicast
tcpdump -i eth0 multicast

# Check multicast groups
netstat -g

# Test multicast with socat
echo "test" | socat - UDP-DATAGRAM:239.2.3.1:6969
```

#### Solutions

**1. Enable Multicast Routing**
```bash
# Enable multicast routing
sudo nano /etc/sysctl.conf

# Add:
net.ipv4.ip_forward=1
net.ipv4.conf.all.mc_forwarding=1
net.ipv4.conf.eth0.mc_forwarding=1

# Apply changes
sudo sysctl -p
```

**2. Network Switch Configuration**
```bash
# Ensure switch supports multicast
# Configure IGMP snooping if needed
# Check VLAN configuration
```

**3. Firewall Multicast Rules**
```bash
# Allow multicast traffic
sudo ufw allow 239.2.3.1
sudo ufw allow from 239.2.3.1

# Or use iptables
sudo iptables -A INPUT -d 239.2.3.1 -j ACCEPT
sudo iptables -A OUTPUT -d 239.2.3.1 -j ACCEPT
```

---

## ⚡ Performance Problems

### High Memory Usage

#### Symptoms
- Memory usage >80%
- Service crashes due to OOM
- Slow response times

#### Diagnosis
```bash
# Check memory usage
free -h
ps aux | grep python

# Check for memory leaks
sudo journalctl -u atos-tdma | grep -i "memory\|leak"

# Monitor memory over time
watch -n 1 'free -h'
```

#### Solutions

**1. Reduce Queue Size**
```bash
# Edit marshall_tak_tdma.py
# Reduce MAX_QUEUE_SIZE from 1000 to 500
MAX_QUEUE_SIZE = 500
```

**2. Optimize Database**
```bash
# Clean old data
sqlite3 atos_events.db "DELETE FROM tag_events WHERE timestamp < datetime('now', '-7 days');"

# Vacuum database
sqlite3 atos_events.db "VACUUM;"

# Create indexes
sqlite3 atos_events.db "CREATE INDEX IF NOT EXISTS idx_timestamp ON tag_events(timestamp);"
```

**3. Adjust TDMA Intervals**
```bash
# Increase intervals for high device count
nano tak_server_config.json

{
  "tdma_interval": 5,
  "send_interval": 20,
  "multicast_interval": 5
}
```

### High CPU Usage

#### Symptoms
- CPU usage >80%
- Slow packet processing
- High system load

#### Diagnosis
```bash
# Check CPU usage
top -p $(pgrep -f marshall_tak_tdma)
htop

# Check for stuck processes
ps aux | grep marshall_tak_tdma

# Monitor system load
uptime
```

#### Solutions

**1. Optimize Processing Loops**
```bash
# Increase sleep intervals in loops
# Edit marshall_tak_tdma.py processing loops
time.sleep(0.1)  # Increase from 0.01 to 0.1
```

**2. Reduce Logging**
```bash
# Disable comprehensive logging
# Set ENABLE_FILE_LOGGING = False in code
```

**3. System Tuning**
```bash
# Optimize CPU governor
echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

# Increase process priority
sudo renice -n -10 -p $(pgrep -f marshall_tak_tdma)
```

---

## 🗄️ Database Issues

### Database Locked

#### Symptoms
- "database is locked" errors
- Service crashes when accessing database
- High database access times

#### Diagnosis
```bash
# Check for database locks
sqlite3 atos_events.db "PRAGMA busy_timeout = 30000;"

# Check database status
sqlite3 atos_events.db "PRAGMA database_list;"

# Check for multiple connections
lsof atos_events.db
```

#### Solutions

**1. Increase Timeout**
```bash
# Edit atos_sqlite.py
# Increase timeout in get_db() function
conn.execute("PRAGMA busy_timeout = 30000;")
```

**2. Optimize Database Access**
```bash
# Use connection pooling
# Implement proper connection closing
# Add retry logic for database operations
```

**3. Database Maintenance**
```bash
# Rebuild database
sqlite3 atos_events.db "VACUUM;"
sqlite3 atos_events.db "REINDEX;"

# Check integrity
sqlite3 atos_events.db "PRAGMA integrity_check;"
```

### Database Corruption

#### Symptoms
- "database disk image is malformed" errors
- Missing or corrupted data
- Service won't start

#### Solutions

**1. Restore from Backup**
```bash
# Stop service
sudo systemctl stop atos-tdma

# Restore database
cp backups/atos_events_YYYYMMDD_HHMMSS.db atos_events.db

# Fix permissions
sudo chown atos:atos atos_events.db
chmod 600 atos_events.db

# Start service
sudo systemctl start atos-tdma
```

**2. Rebuild Database**
```bash
# Create new database
rm atos_events.db
python -c "import atos_sqlite; atos_sqlite.init_db()"

# Restart service
sudo systemctl restart atos-tdma
```

---

## 🌐 Web Interface Problems

### Dashboard Not Accessible

#### Symptoms
- Can't access http://server-ip:5000
- "Connection refused" errors
- Dashboard shows blank page

#### Diagnosis
```bash
# Check if Flask is running
ps aux | grep flask
netstat -tlnp | grep 5000

# Test local access
curl http://localhost:5000/api/stats

# Check firewall
sudo ufw status
```

#### Solutions

**1. Firewall Issues**
```bash
# Allow web interface
sudo ufw allow 5000

# Or restrict to specific network
sudo ufw allow from 192.168.1.0/24 to any port 5000
```

**2. Flask Not Starting**
```bash
# Check Flask logs
sudo journalctl -u atos-tdma | grep -i flask

# Test manual Flask start
cd /opt/atos-forwarder
source venv/bin/activate
python -c "from marshall_tak_tdma import app; app.run(host='0.0.0.0', port=5000)"
```

**3. Port Conflicts**
```bash
# Check for port conflicts
sudo netstat -tlnp | grep 5000
sudo lsof -i :5000

# Kill conflicting process
sudo kill -9 [PID]
```

### Performance Dashboard Issues

#### Symptoms
- Performance metrics not updating
- Charts not displaying
- API endpoints returning errors

#### Diagnosis
```bash
# Test performance API
curl http://localhost:5000/api/performance

# Check for psutil issues
python -c "import psutil; print(psutil.cpu_percent())"

# Check JavaScript console errors
# Open browser developer tools
```

#### Solutions

**1. psutil Installation**
```bash
# Install psutil
source venv/bin/activate
pip install psutil

# Or install system package
sudo apt install python3-psutil
```

**2. Permission Issues**
```bash
# Fix permissions for system monitoring
sudo chmod 755 /proc
sudo chmod 755 /sys
```

---

## 📊 Log Analysis

### Understanding Log Messages

#### Common Log Patterns
```
✅ Success indicators
❌ Error indicators  
⚠️ Warning indicators
🔄 Retry/retry indicators
📡 Network activity
🚀 Startup/shutdown
🔧 Configuration changes
```

#### Log Levels
- **INFO**: Normal operation messages
- **WARNING**: Potential issues
- **ERROR**: Problems that need attention
- **CRITICAL**: System-threatening issues

### Log Analysis Commands

```bash
# View recent logs
sudo journalctl -u atos-tdma -n 100

# Follow logs in real-time
sudo journalctl -u atos-tdma -f

# Search for errors
sudo journalctl -u atos-tdma | grep -i error

# Search for specific patterns
sudo journalctl -u atos-tdma | grep "serial connection"

# Export logs to file
sudo journalctl -u atos-tdma --since "1 hour ago" > logs.txt
```

### Common Log Messages and Solutions

#### Serial Connection Errors
```
❌ Serial connection error: could not open port '/dev/ttyACM0'
```
**Solution**: Check device permissions and USB connection

#### Network Errors
```
❌ Failed to send COT message: Network unreachable
```
**Solution**: Check TAK server connectivity and firewall

#### Database Errors
```
❌ Database connection failed: SQLite database locked
```
**Solution**: Check for multiple database connections

#### Performance Warnings
```
⚠️ High memory usage detected (85%)
```
**Solution**: Monitor memory usage and optimize configuration

---

## 🚨 Emergency Procedures

### Complete System Failure

#### Symptoms
- Service won't start
- Database corrupted
- Network completely down

#### Emergency Recovery
```bash
# 1. Stop all services
sudo systemctl stop atos-tdma

# 2. Backup current state
cp atos_events.db atos_events.db.emergency
tar -czf emergency_backup_$(date +%Y%m%d_%H%M%S).tar.gz .

# 3. Restore from last known good backup
cp backups/atos_events_YYYYMMDD_HHMMSS.db atos_events.db

# 4. Fix permissions
sudo chown -R atos:atos /opt/atos-forwarder/
chmod 600 *.json *.db

# 5. Restart service
sudo systemctl start atos-tdma

# 6. Verify operation
curl http://localhost:5000/api/stats
```

### Data Loss Prevention

```bash
# Create emergency backup script
nano /opt/atos-forwarder/emergency_backup.sh

#!/bin/bash
BACKUP_DIR="/opt/atos-forwarder/emergency_backups"
DATE=$(date +%Y%m%d_%H%M%S)

mkdir -p $BACKUP_DIR
cp atos_events.db $BACKUP_DIR/emergency_$DATE.db
cp *.json $BACKUP_DIR/
echo "Emergency backup created: emergency_$DATE.db"
```

### System Reset

```bash
# Complete system reset (use with caution)
sudo systemctl stop atos-tdma
rm -f atos_events.db
rm -f *.json
python marshall_tak_tdma.py  # Recreates default configs
sudo systemctl start atos-tdma
```

---

## 📞 Contact Support

### Information to Collect Before Contacting Support

1. **System Information**
   ```bash
   uname -a
   cat /etc/os-release
   python --version
   ```

2. **Service Status**
   ```bash
   sudo systemctl status atos-tdma
   sudo journalctl -u atos-tdma -n 50
   ```

3. **Configuration Files**
   ```bash
   cat tak_server_config.json
   cat forwarding_config.json
   ```

4. **Network Information**
   ```bash
   ip addr show
   ip route show
   sudo ufw status
   ```

5. **Hardware Information**
   ```bash
   lsusb
   lspci
   free -h
   df -h
   ```

### Support Contact Information
- **Technical Support**: [Your Support Email]
- **Emergency Contact**: [Your Emergency Phone]
- **Documentation**: [Your Documentation URL]

### Escalation Process
1. **Level 1**: Basic troubleshooting (this guide)
2. **Level 2**: Advanced diagnostics and configuration
3. **Level 3**: Code-level debugging and custom solutions
4. **Level 4**: Hardware and network infrastructure issues

---

**Version**: 1.0  
**Last Updated**: December 2024  
**Compatibility**: ATOS TAK Forwarder v2.0+ 