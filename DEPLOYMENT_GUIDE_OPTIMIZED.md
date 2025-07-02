# 🚀 Deployment Guide: Optimized ATOS TAK Forwarder

## Overview

This guide covers deploying the optimized ATOS TAK Forwarder for high-volume operations (100+ devices) on a Raspberry Pi or similar system.

## 📋 Prerequisites

### Hardware Requirements
- **Raspberry Pi 4** (4GB RAM recommended for 100+ devices)
- **MicroSD card** (32GB+ recommended)
- **USB serial adapter** for ATOS tracker connection
- **Network connection** for TAK server communication

### Software Requirements
- **Raspberry Pi OS** (Bullseye or newer)
- **Python 3.9+** (with virtual environment support)
- **Git** for version control

## 🚀 Installation Steps

### Step 1: System Setup

```bash
# Update system
sudo apt update && sudo apt upgrade -y

# Install required packages
sudo apt install -y python3 python3-pip python3-venv git screen

# Install serial communication tools
sudo apt install -y minicom
```

### Step 2: Clone Repository

```bash
# Clone the repository
git clone https://github.com/mjthree/ATOS-Tak-Forwarder.git
cd ATOS-Tak-Forwarder

# Verify optimized version is present
ls -la marshall_tak_optimized.py
```

### Step 3: Python Virtual Environment

```bash
# Create virtual environment
python3 -m venv venv

# Activate virtual environment
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Install additional optimization dependencies
pip install asyncio concurrent-futures
```

### Step 4: Configuration

```bash
# Create configuration files (if they don't exist)
python3 -c "
import json
import os

# TAK server configuration
if not os.path.exists('tak_server_config.json'):
    with open('tak_server_config.json', 'w') as f:
        json.dump({
            'ip': '192.168.200.11',
            'port': 8087,
            'send_interval': 2
        }, f, indent=2)

# Forwarding configuration
if not os.path.exists('forwarding_config.json'):
    with open('forwarding_config.json', 'w') as f:
        json.dump({
            'forward_all': False,
            'tags': {}
        }, f, indent=2)

print('✅ Configuration files created')
"
```

### Step 5: Serial Port Setup

```bash
# Add user to dialout group for serial access
sudo usermod -a -G dialout $USER

# Configure serial port
sudo raspi-config nonint do_serial 2

# Reboot to apply changes
sudo reboot
```

### Step 6: Test Serial Connection

```bash
# After reboot, test serial connection
ls -la /dev/ttyACM0

# If device exists, test with minicom
minicom -D /dev/ttyACM0 -b 115200
# Press Ctrl+A, then X to exit
```

## 🔧 Configuration Tuning

### For 50-100 Devices
```python
# Default settings work well
BATCH_SIZE = 100
MAX_QUEUE_SIZE = 2000
TARGET_INTERVAL = 2.0
```

### For 100-200 Devices
```python
# Increase batch size and queue size
BATCH_SIZE = 150
MAX_QUEUE_SIZE = 3000
TARGET_INTERVAL = 2.0
```

### For 200-500 Devices
```python
# High-volume settings
BATCH_SIZE = 200
MAX_QUEUE_SIZE = 5000
TARGET_INTERVAL = 3.0  # Slightly longer interval
```

## 🚀 Running the Optimized Version

### Method 1: Direct Execution
```bash
# Activate virtual environment
source venv/bin/activate

# Run optimized version
python3 marshall_tak_optimized.py
```

### Method 2: Systemd Service (Recommended)

```bash
# Create systemd service file
sudo tee /etc/systemd/system/atos-tak-optimized.service > /dev/null <<EOF
[Unit]
Description=Optimized ATOS TAK Forwarder
After=network.target

[Service]
Type=simple
User=pi
WorkingDirectory=/home/pi/ATOS-Tak-Forwarder
Environment=PATH=/home/pi/ATOS-Tak-Forwarder/venv/bin
ExecStart=/home/pi/ATOS-Tak-Forwarder/venv/bin/python marshall_tak_optimized.py
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
EOF

# Enable and start service
sudo systemctl daemon-reload
sudo systemctl enable atos-tak-optimized
sudo systemctl start atos-tak-optimized

# Check status
sudo systemctl status atos-tak-optimized
```

### Method 3: Screen Session
```bash
# Create screen session
screen -S atos-optimized

# Activate virtual environment and run
source venv/bin/activate
python3 marshall_tak_optimized.py

# Detach from screen: Ctrl+A, then D
# Reattach: screen -r atos-optimized
```

## 📊 Monitoring Performance

### Web Interface
- **Main Dashboard**: `http://raspberry-pi-ip:5000/display`
- **Performance Stats**: `http://raspberry-pi-ip:5000/api/stats`
- **Tag Management**: `http://raspberry-pi-ip:5000`

### Command Line Monitoring
```bash
# Check service status
sudo systemctl status atos-tak-optimized

# View logs
sudo journalctl -u atos-tak-optimized -f

# Check performance stats
curl http://localhost:5000/api/stats | python3 -m json.tool
```

### Performance Metrics to Monitor
- **Processing time**: Should be <100ms for 100 devices
- **Batch size**: Should adapt between 50-200 based on load
- **Queue overflow**: Should be 0 or very low
- **Memory usage**: Should be <100MB for 100 devices
- **Network packets**: Should be 1-5 packets per batch

## 🔍 Troubleshooting

### Common Issues

#### 1. Serial Port Not Found
```bash
# Check if device exists
ls -la /dev/ttyACM*

# Check user permissions
groups $USER

# Re-add to dialout group
sudo usermod -a -G dialout $USER
sudo reboot
```

#### 2. Performance Issues
```bash
# Check system resources
htop
free -h
df -h

# Check processing times
curl http://localhost:5000/api/stats | python3 -m json.tool

# Reduce batch size if needed
# Edit marshall_tak_optimized.py and change BATCH_SIZE
```

#### 3. Network Issues
```bash
# Test TAK server connectivity
ping 192.168.200.11

# Test UDP port
nc -u -z 192.168.200.11 8087

# Check firewall
sudo ufw status
```

#### 4. Memory Issues
```bash
# Check memory usage
free -h

# Reduce queue size if needed
# Edit MAX_QUEUE_SIZE in marshall_tak_optimized.py
```

### Performance Tuning

#### For High Device Counts (>200)
```python
# Increase system limits
# Edit /etc/security/limits.conf
# Add: pi soft nofile 65536
# Add: pi hard nofile 65536

# Increase kernel parameters
# Edit /etc/sysctl.conf
# Add: net.core.rmem_max = 16777216
# Add: net.core.wmem_max = 16777216
```

#### For Network Optimization
```bash
# Optimize network settings
sudo tee -a /etc/sysctl.conf > /dev/null <<EOF
net.core.rmem_default = 262144
net.core.rmem_max = 16777216
net.core.wmem_default = 262144
net.core.wmem_max = 16777216
net.ipv4.tcp_rmem = 4096 65536 16777216
net.ipv4.tcp_wmem = 4096 65536 16777216
EOF

sudo sysctl -p
```

## 📈 Scaling Guidelines

### Device Count Recommendations

| Devices | RAM | CPU | Batch Size | Queue Size | Interval |
|---------|-----|-----|------------|------------|----------|
| 10-50   | 2GB | Any | 50         | 1000       | 2s       |
| 50-100  | 4GB | Pi4 | 100        | 2000       | 2s       |
| 100-200 | 4GB | Pi4 | 150        | 3000       | 2s       |
| 200-500 | 8GB | Pi4 | 200        | 5000       | 3s       |
| 500+    | 8GB | Pi4 | 250        | 10000      | 5s       |

### Performance Expectations

| Devices | Processing Time | Network Packets | Memory Usage | Update Interval |
|---------|----------------|-----------------|--------------|-----------------|
| 50      | ~35ms          | 1-2             | ~20MB        | 2s              |
| 100     | ~70ms          | 1-4             | ~40MB        | 2s              |
| 200     | ~140ms         | 2-8             | ~60MB        | 2s              |
| 500     | ~350ms         | 5-20            | ~100MB       | 3s              |

## 🔄 Migration from Original

### Step 1: Backup Current Setup
```bash
# Backup original files
cp marshall_tak.py marshall_tak_backup.py
cp -r comprehensive_logs/ comprehensive_logs_backup/
```

### Step 2: Deploy Optimized Version
```bash
# Stop current service
sudo systemctl stop atos-tracker

# Replace with optimized version
cp marshall_tak_optimized.py marshall_tak.py

# Update service to use optimized version
sudo systemctl start atos-tracker
```

### Step 3: Test with Small Load
```bash
# Start with 10-20 devices first
# Monitor performance at /api/stats
# Verify all optimizations are working
```

### Step 4: Scale Up Gradually
```bash
# Increase device count gradually
# Monitor performance metrics
# Adjust batch sizes if needed
```

## 🎯 Success Criteria

### Performance Targets
- ✅ Processing time < 100ms for 100 devices
- ✅ Network overhead < 5 UDP packets per batch
- ✅ Memory usage < 100MB for 100 devices
- ✅ Queue overflow < 1% of total operations
- ✅ Maintain 2-second update intervals

### Monitoring Checklist
- [ ] Service starts without errors
- [ ] Serial connection established
- [ ] Web interface accessible
- [ ] Performance stats showing improvements
- [ ] No queue overflow warnings
- [ ] Memory usage within limits
- [ ] Network packets reduced significantly

## 🚀 Next Steps

### For Production Deployment
1. **Load Testing**: Test with expected device count
2. **Monitoring Setup**: Configure log rotation and monitoring
3. **Backup Strategy**: Set up automated backups
4. **Documentation**: Document specific configuration for your environment

### For Further Optimization
1. **Distributed Architecture**: Multiple forwarder instances
2. **Load Balancing**: Multiple TAK servers
3. **Database Integration**: Store historical data
4. **Real-time Analytics**: Advanced performance monitoring

## 📞 Support

If you encounter issues:
1. Check the troubleshooting section above
2. Review logs: `sudo journalctl -u atos-tak-optimized -f`
3. Check performance stats: `http://localhost:5000/api/stats`
4. Verify configuration files are correct
5. Test with smaller device counts first

The optimized version should provide dramatic performance improvements while maintaining full compatibility with the original system. 