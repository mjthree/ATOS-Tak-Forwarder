# 🚀 ATOS TAK Forwarder - Production Deployment Guide

## 📋 Table of Contents
1. [System Overview](#system-overview)
2. [Prerequisites](#prerequisites)
3. [Installation](#installation)
4. [Configuration](#configuration)
5. [Service Setup](#service-setup)
6. [Security Hardening](#security-hardening)
7. [Monitoring & Maintenance](#monitoring--maintenance)
8. [Troubleshooting](#troubleshooting)
9. [Performance Optimization](#performance-optimization)
10. [Backup & Recovery](#backup--recovery)

---

## 🎯 System Overview

The ATOS TAK Forwarder is a high-performance TDMA-based tag tracking system designed for real-time location services with TAK (Tactical Assault Kit) integration. It supports 100+ devices with advanced rate limiting, multicast broadcasting, and comprehensive monitoring.

### Key Features
- **TDMA Processing**: Time-division multiple access for efficient tag management
- **Real-time Forwarding**: Instant TAK server integration
- **Multicast Broadcasting**: Efficient multi-client distribution
- **Performance Monitoring**: System health and metrics tracking
- **Web Dashboard**: Comprehensive management interface
- **Log Management**: Rotating logs with web-based viewer
- **Database Management**: SQLite with archival capabilities

---

## 🔧 Prerequisites

### Hardware Requirements
- **CPU**: Intel i5/AMD Ryzen 5 or better (4+ cores recommended)
- **RAM**: 8GB minimum, 16GB recommended for 100+ devices
- **Storage**: 50GB+ SSD for database and logs
- **Network**: Gigabit Ethernet with multicast support
- **Serial**: USB-to-Serial adapter for ATOS hardware

### Software Requirements
- **OS**: Ubuntu 20.04 LTS or newer
- **Python**: 3.8+ with pip
- **Dependencies**: See requirements.txt
- **Network**: Static IP configuration
- **Firewall**: Configured for TAK server communication

### Network Requirements
- **TAK Server**: Accessible on configured IP:port
- **Multicast**: Network supports multicast traffic (239.2.3.1:6969)
- **Serial**: USB device access (/dev/ttyACM0 or similar)
- **Web Interface**: Port 5000 accessible for management

---

## 📦 Installation

### 1. System Preparation

```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install required packages
sudo apt install -y python3 python3-pip python3-venv git curl wget

# Create application directory
sudo mkdir -p /opt/atos-forwarder
sudo chown $USER:$USER /opt/atos-forwarder
cd /opt/atos-forwarder
```

### 2. Application Installation

```bash
# Clone or copy application files
# (Assuming files are already in the directory)

# Create virtual environment
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Install additional system dependencies
sudo apt install -y pyserial psutil
```

### 3. File Permissions

```bash
# Set proper permissions
chmod +x marshall_tak_tdma.py
chmod +x start_dashboard.sh
chmod +x install_high_volume.sh

# Create log directories
mkdir -p comprehensive_logs
mkdir -p database_archives
```

---

## ⚙️ Configuration

### 1. Network Configuration

```bash
# Set static IP (example)
sudo nano /etc/netplan/01-netcfg.yaml

# Example configuration:
network:
  version: 2
  renderer: networkd
  ethernets:
    eth0:
      dhcp4: no
      addresses:
        - 192.168.1.100/24
      gateway4: 192.168.1.1
      nameservers:
        addresses: [8.8.8.8, 8.8.4.4]

# Apply configuration
sudo netplan apply
```

### 2. TAK Server Configuration

Edit `tak_server_config.json`:

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

### 3. Forwarding Configuration

Edit `forwarding_config.json`:

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

### 4. Environment Variables

Create `.env` file:

```bash
# ATOS TAK Forwarder Environment
FLASK_ENV=production
FLASK_DEBUG=0
SERIAL_PORT=/dev/ttyACM0
TAK_SERVER_IP=192.168.1.50
TAK_SERVER_PORT=8686
MULTICAST_GROUP=239.2.3.1
MULTICAST_PORT=6969
LOG_LEVEL=INFO
```

---

## 🔧 Service Setup

### 1. Systemd Service Creation

Create `/etc/systemd/system/atos-tdma.service`:

```ini
[Unit]
Description=ATOS TAK Forwarder TDMA Service
After=network.target
Wants=network.target

[Service]
Type=simple
User=atos
Group=atos
WorkingDirectory=/opt/atos-forwarder
Environment=PATH=/opt/atos-forwarder/venv/bin
ExecStart=/opt/atos-forwarder/venv/bin/python marshall_tak_tdma.py
Restart=always
RestartSec=10
StandardOutput=journal
StandardError=journal

# Security settings
NoNewPrivileges=true
PrivateTmp=true
ProtectSystem=strict
ProtectHome=true
ReadWritePaths=/opt/atos-forwarder

[Install]
WantedBy=multi-user.target
```

### 2. Service User Creation

```bash
# Create service user
sudo useradd -r -s /bin/false -d /opt/atos-forwarder atos
sudo chown -R atos:atos /opt/atos-forwarder

# Enable and start service
sudo systemctl daemon-reload
sudo systemctl enable atos-tdma
sudo systemctl start atos-tdma
```

### 3. Service Management

```bash
# Check service status
sudo systemctl status atos-tdma

# View logs
sudo journalctl -u atos-tdma -f

# Restart service
sudo systemctl restart atos-tdma

# Stop service
sudo systemctl stop atos-tdma
```

---

## 🔒 Security Hardening

### 1. Firewall Configuration

```bash
# Install UFW
sudo apt install ufw

# Configure firewall rules
sudo ufw default deny incoming
sudo ufw default allow outgoing

# Allow SSH
sudo ufw allow ssh

# Allow TAK server communication
sudo ufw allow from 192.168.1.0/24 to any port 8686
sudo ufw allow from 192.168.1.0/24 to any port 6969

# Allow web interface (restrict to management network)
sudo ufw allow from 192.168.1.0/24 to any port 5000

# Enable firewall
sudo ufw enable
```

### 2. Application Security

```bash
# Change default admin password
# Edit marshall_tak_tdma.py and update ADMIN_PASSWORD_HASH

# Restrict file permissions
chmod 600 *.json
chmod 600 *.db
chmod 755 templates/
chmod 644 templates/*.html

# Create SSL certificate for HTTPS (recommended)
sudo apt install certbot python3-certbot-nginx
```

### 3. Network Security

```bash
# Configure fail2ban
sudo apt install fail2ban
sudo systemctl enable fail2ban
sudo systemctl start fail2ban

# Create fail2ban configuration
sudo nano /etc/fail2ban/jail.local

# Add to jail.local:
[atos-forwarder]
enabled = true
port = 5000
filter = atos-forwarder
logpath = /var/log/atos-forwarder.log
maxretry = 3
bantime = 3600
```

---

## 📊 Monitoring & Maintenance

### 1. Log Management

```bash
# Configure logrotate
sudo nano /etc/logrotate.d/atos-forwarder

# Add configuration:
/opt/atos-forwarder/atos_forwarder.log {
    daily
    missingok
    rotate 30
    compress
    delaycompress
    notifempty
    create 644 atos atos
    postrotate
        systemctl reload atos-tdma
    endscript
}
```

### 2. Performance Monitoring

```bash
# Access performance dashboard
http://your-server-ip:5000/performance

# Monitor system resources
htop
iotop
nethogs

# Check disk usage
df -h
du -sh /opt/atos-forwarder/*
```

### 3. Database Maintenance

```bash
# Regular database cleanup (add to crontab)
# Edit crontab: crontab -e

# Clean old data weekly
0 2 * * 0 /opt/atos-forwarder/venv/bin/python -c "
import atos_sqlite
with atos_sqlite.get_db() as conn:
    conn.execute('DELETE FROM tag_events WHERE timestamp < datetime(\"now\", \"-30 days\")')
    conn.commit()
"

# Backup database daily
0 1 * * * cp /opt/atos-forwarder/atos_events.db /opt/atos-forwarder/backups/atos_events_$(date +\%Y\%m\%d).db
```

---

## 🔍 Troubleshooting

### 1. Common Issues

#### Serial Connection Problems
```bash
# Check device permissions
ls -la /dev/ttyACM0
sudo usermod -a -G dialout atos

# Test serial connection
sudo apt install minicom
minicom -D /dev/ttyACM0 -b 115200
```

#### Network Issues
```bash
# Test TAK server connectivity
telnet 192.168.1.50 8686
nc -u 192.168.1.50 8686

# Check multicast
tcpdump -i eth0 multicast
```

#### Service Won't Start
```bash
# Check service logs
sudo journalctl -u atos-tdma -n 50

# Check file permissions
ls -la /opt/atos-forwarder/
sudo chown -R atos:atos /opt/atos-forwarder/

# Test manual startup
cd /opt/atos-forwarder
source venv/bin/activate
python marshall_tak_tdma.py
```

### 2. Performance Issues

#### High Memory Usage
```bash
# Check memory usage
free -h
ps aux | grep python

# Restart service
sudo systemctl restart atos-tdma

# Check for memory leaks
sudo journalctl -u atos-tdma | grep "memory"
```

#### High CPU Usage
```bash
# Check CPU usage
top -p $(pgrep -f marshall_tak_tdma)

# Check for stuck processes
ps aux | grep marshall_tak_tdma

# Restart service
sudo systemctl restart atos-tdma
```

### 3. Database Issues

```bash
# Check database integrity
sqlite3 atos_events.db "PRAGMA integrity_check;"

# Rebuild database indexes
sqlite3 atos_events.db "REINDEX;"

# Check database size
ls -lh atos_events.db
```

---

## ⚡ Performance Optimization

### 1. System Tuning

```bash
# Optimize network settings
sudo nano /etc/sysctl.conf

# Add optimizations:
net.core.rmem_max = 16777216
net.core.wmem_max = 16777216
net.ipv4.tcp_rmem = 4096 87380 16777216
net.ipv4.tcp_wmem = 4096 65536 16777216
net.core.netdev_max_backlog = 5000

# Apply changes
sudo sysctl -p
```

### 2. Application Tuning

```bash
# Adjust TDMA intervals in tak_server_config.json
# For high device count (>50):
{
  "tdma_interval": 3,
  "send_interval": 15,
  "multicast_interval": 3
}

# For low device count (<20):
{
  "tdma_interval": 1,
  "send_interval": 5,
  "multicast_interval": 1
}
```

### 3. Database Optimization

```bash
# Create indexes for better performance
sqlite3 atos_events.db "
CREATE INDEX IF NOT EXISTS idx_timestamp ON tag_events(timestamp);
CREATE INDEX IF NOT EXISTS idx_tag_id ON tag_events(tag_id);
CREATE INDEX IF NOT EXISTS idx_tag_timestamp ON tag_events(tag_id, timestamp);
"
```

---

## 💾 Backup & Recovery

### 1. Backup Strategy

```bash
# Create backup script
nano /opt/atos-forwarder/backup.sh

#!/bin/bash
BACKUP_DIR="/opt/atos-forwarder/backups"
DATE=$(date +%Y%m%d_%H%M%S)

# Create backup directory
mkdir -p $BACKUP_DIR

# Backup database
cp atos_events.db $BACKUP_DIR/atos_events_$DATE.db

# Backup configuration
tar -czf $BACKUP_DIR/config_$DATE.tar.gz *.json templates/

# Backup logs
tar -czf $BACKUP_DIR/logs_$DATE.tar.gz atos_forwarder.log comprehensive_logs/

# Clean old backups (keep 30 days)
find $BACKUP_DIR -name "*.db" -mtime +30 -delete
find $BACKUP_DIR -name "*.tar.gz" -mtime +30 -delete

echo "Backup completed: $DATE"
```

### 2. Recovery Procedures

#### Database Recovery
```bash
# Stop service
sudo systemctl stop atos-tdma

# Restore database
cp /opt/atos-forwarder/backups/atos_events_YYYYMMDD_HHMMSS.db atos_events.db

# Fix permissions
sudo chown atos:atos atos_events.db
chmod 600 atos_events.db

# Start service
sudo systemctl start atos-tdma
```

#### Configuration Recovery
```bash
# Stop service
sudo systemctl stop atos-tdma

# Restore configuration
tar -xzf /opt/atos-forwarder/backups/config_YYYYMMDD_HHMMSS.tar.gz

# Fix permissions
chmod 600 *.json

# Start service
sudo systemctl start atos-tdma
```

### 3. Disaster Recovery

```bash
# Full system recovery script
nano /opt/atos-forwarder/recover.sh

#!/bin/bash
# Stop all services
sudo systemctl stop atos-tdma

# Restore from backup
BACKUP_DATE=$1
if [ -z "$BACKUP_DATE" ]; then
    echo "Usage: $0 YYYYMMDD_HHMMSS"
    exit 1
fi

# Restore database
cp backups/atos_events_$BACKUP_DATE.db atos_events.db

# Restore configuration
tar -xzf backups/config_$BACKUP_DATE.tar.gz

# Restore logs
tar -xzf backups/logs_$BACKUP_DATE.tar.gz

# Fix permissions
sudo chown -R atos:atos /opt/atos-forwarder/
chmod 600 *.json *.db
chmod 755 templates/
chmod 644 templates/*.html

# Start service
sudo systemctl start atos-tdma

echo "Recovery completed from backup: $BACKUP_DATE"
```

---

## 📞 Support

### Contact Information
- **Technical Support**: [Your Support Email]
- **Documentation**: [Your Documentation URL]
- **Emergency**: [Your Emergency Contact]

### Log Files Location
- **Application Logs**: `/opt/atos-forwarder/atos_forwarder.log`
- **System Logs**: `sudo journalctl -u atos-tdma`
- **Comprehensive Logs**: `/opt/atos-forwarder/comprehensive_logs/`

### Useful Commands
```bash
# Service management
sudo systemctl status atos-tdma
sudo systemctl restart atos-tdma
sudo journalctl -u atos-tdma -f

# Performance monitoring
http://your-server-ip:5000/performance
http://your-server-ip:5000/logs

# Database management
sqlite3 atos_events.db ".tables"
sqlite3 atos_events.db "SELECT COUNT(*) FROM tag_events;"
```

---

**Version**: 1.0  
**Last Updated**: December 2024  
**Compatibility**: ATOS TAK Forwarder v2.0+ 