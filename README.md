# 🚀 ATOS TAK Forwarder v2.0

**High-Performance TDMA-Based Tag Tracking System with TAK Integration**

[![Python 3.8+](https://img.shields.io/badge/python-3.8+-blue.svg)](https://www.python.org/downloads/)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](LICENSE)
[![Status](https://img.shields.io/badge/status-production%20ready-brightgreen.svg)]()

## 📋 Table of Contents
1. [Overview](#overview)
2. [Features](#features)
3. [Quick Start](#quick-start)
4. [Documentation](#documentation)
5. [System Requirements](#system-requirements)
6. [Installation](#installation)
7. [Configuration](#configuration)
8. [Usage](#usage)
9. [Monitoring](#monitoring)
10. [Troubleshooting](#troubleshooting)
11. [Contributing](#contributing)
12. [Support](#support)

---

## 🎯 Overview

The ATOS TAK Forwarder is a production-ready, high-performance system designed for real-time location tracking with seamless TAK (Tactical Assault Kit) integration. Built for mission-critical operations, it supports 100+ devices with advanced TDMA processing, multicast broadcasting, and comprehensive monitoring capabilities.

### Key Capabilities
- **Real-time Processing**: Sub-second latency for location updates
- **High Volume**: Optimized for 100+ concurrent devices
- **TAK Integration**: Native Cursor on Target (COT) protocol support
- **Multicast Broadcasting**: Efficient multi-client distribution
- **Web Management**: Comprehensive dashboard and monitoring
- **Production Ready**: Service management, logging, and security

---

## ✨ Features

### 🚀 Core Features
- **TDMA Processing**: Time-division multiple access for efficient tag management
- **Real-time Forwarding**: Instant TAK server integration with COT messages
- **Multicast Broadcasting**: Network-efficient multi-client distribution
- **Rate Limiting**: Intelligent packet management to prevent network congestion
- **Stale Detection**: Automatic identification of inactive devices

### 📊 Management & Monitoring
- **Web Dashboard**: Real-time tag status and configuration
- **Performance Monitor**: System health metrics and alerts
- **Log Viewer**: Web-based log management with filtering
- **Database Interface**: Historical data viewing and export
- **Admin Panel**: Advanced system management and maintenance

### 🔧 Advanced Features
- **Template System**: Save and load configuration templates
- **Export Capabilities**: CSV and KML data export with altitude mode options
- **KML Altitude Modes**: Choose between "Ground Track" (clamped to ground) and "3D Track" (absolute altitude)
- **Database Archival**: Automatic data management and cleanup
- **Security**: Authentication, authorization, and network security
- **Backup & Recovery**: Automated backup and disaster recovery
- **Time Zone Consistency**: All exported data and UI displays use the America/Phoenix timezone (MST). The backend converts UTC timestamps before sending them.
- **CSV Simulation**: Import and convert CSV flight data for testing and simulation

### 🌐 Integration
- **TAK Server**: Native UDP communication
- **Multicast**: Standard multicast protocol support
- **Serial Communication**: USB-to-Serial ATOS hardware support
- **REST API**: Full API for external system integration
- **Web Interface**: Modern, responsive web dashboard

---

## 🚀 Quick Start

### Prerequisites
- Linux system (Ubuntu 20.04+ recommended)
- Python 3.8+
- ATOS hardware with USB serial connection
- Network access to TAK server

### Installation
```bash
# Clone repository
git clone [repository-url]
cd atos-tak-forwarder

# Install dependencies
pip install -r requirements.txt

# Configure system
cp tak_server_config.json.example tak_server_config.json
# Edit configuration files

# Start system
python marshall_tak_tdma.py
```

### Access Points
- **Main Dashboard**: http://localhost:5000
- **Performance Monitor**: http://localhost:5000/performance
- **Log Viewer**: http://localhost:5000/logs
- **Database Interface**: http://localhost:5000/database

---

## 📚 Documentation

### Complete Documentation Suite
- **[📖 System Documentation](SYSTEM_DOCUMENTATION.md)** - Technical architecture and API reference
- **[🚀 Deployment Guide](DEPLOYMENT_GUIDE.md)** - Production installation and configuration
- **[🔍 Troubleshooting Guide](TROUBLESHOOTING_GUIDE.md)** - Common issues and solutions
- **[📊 Performance Guide](RATE_LIMITING_IMPLEMENTATION.md)** - Performance optimization and tuning

### Quick References
- **[⚙️ Configuration Reference](SYSTEM_DOCUMENTATION.md#configuration-reference)** - All configuration options
- **[🔌 API Reference](SYSTEM_DOCUMENTATION.md#api-reference)** - Complete API documentation
- **[🗄️ Database Schema](SYSTEM_DOCUMENTATION.md#database-schema)** - Database structure and queries
- **[🔒 Security Model](SYSTEM_DOCUMENTATION.md#security-model)** - Security features and best practices

---

## 💻 System Requirements

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

### Production Installation
```bash
# System preparation
sudo apt update && sudo apt upgrade -y
sudo apt install -y python3 python3-pip python3-venv git

# Create application directory
sudo mkdir -p /opt/atos-forwarder
sudo chown $USER:$USER /opt/atos-forwarder
cd /opt/atos-forwarder

# Install application
# Copy all files to /opt/atos-forwarder/

# Create virtual environment
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt

# Set up service
sudo cp atos-tdma.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable atos-tdma
sudo systemctl start atos-tdma
```

### Development Installation
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
```

---

## ⚙️ Configuration

### TAK Server Configuration
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

### Forwarding Configuration
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

### Environment Variables
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

---

## 🎮 Usage

### Web Interface
1. **Main Dashboard**: Configure tags, forwarding, and system settings
2. **Display Dashboard**: Real-time map visualization and tracking
3. **Database Interface**: View historical data and export with KML altitude mode options
4. **Performance Monitor**: System health and metrics
5. **Log Viewer**: Real-time log monitoring and management

### Data Export Features
- **CSV Export**: Historical data export with timestamp conversion to MST
- **KML Export**: Google Earth compatible files with altitude mode selection:
  - **Ground Track**: Tracks clamped to ground surface (default)
  - **3D Track**: Full 3D altitude visualization
- **Map Integration**: Direct KML viewing in web browser
- **DZ Altitude**: Configurable drop zone altitude for AGL calculations

### API Usage
```bash
# Get system statistics
curl http://localhost:5000/api/stats

# Get performance metrics
curl http://localhost:5000/api/performance

# Get tag data
curl http://localhost:5000/api/tags

# Configure tag forwarding
curl -X POST http://localhost:5000/api/tag/1/forward \
  -H "Content-Type: application/json" \
  -d '{"forward": true}'
```

### Service Management
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

## 📊 Monitoring

### Performance Dashboard
Access the performance monitor at `http://localhost:5000/performance` for:
- **System Health Score**: Overall system health (0-100)
- **Resource Usage**: Memory, CPU, disk, and network metrics
- **Processing Rates**: Packet processing and UDP send rates
- **Connection Status**: Serial, TAK server, and multicast status
- **Historical Data**: Performance trends over time

### Key Metrics
- **Health Score**: 80+ (healthy), 50-79 (warning), <50 (critical)
- **Memory Usage**: <500MB recommended
- **Queue Utilization**: <80% recommended
- **Error Rate**: <10% recommended
- **Active Tags**: Number of currently active devices

### Alerting
The system automatically logs warnings for:
- High memory usage (>500MB)
- High queue utilization (>80%)
- High error rates (>10%)
- High disk usage (>90%)
- Connection failures

---

## 🔍 Troubleshooting

### Quick Diagnostics
```bash
# Check service status
sudo systemctl status atos-tdma

# View recent logs
sudo journalctl -u atos-tdma -n 50

# Test web interface
curl http://localhost:5000/api/stats

# Check file permissions
ls -la /opt/atos-forwarder/
```

### Common Issues
1. **Serial Connection**: Check device permissions and USB connection
2. **Network Issues**: Verify TAK server connectivity and firewall
3. **Performance Problems**: Monitor resource usage and optimize configuration
4. **Database Issues**: Check database integrity and permissions

### Detailed Troubleshooting
See the **[🔍 Troubleshooting Guide](TROUBLESHOOTING_GUIDE.md)** for comprehensive solutions to common problems.

---

## 🤝 Contributing

### Development Setup
```bash
# Fork and clone repository
git clone [your-fork-url]
cd atos-tak-forwarder

# Create feature branch
git checkout -b feature/your-feature-name

# Make changes and test
pytest tests/
black marshall_tak_tdma.py
flake8 marshall_tak_tdma.py

# Commit and push
git commit -m "Add your feature"
git push origin feature/your-feature-name
```

### Code Standards
- **Python**: PEP 8 compliance
- **Testing**: Unit tests for new features
- **Documentation**: Update relevant documentation
- **Security**: Follow security best practices

### Testing
```bash
# Run all tests
pytest tests/

# Run with coverage
pytest --cov=marshall_tak_tdma tests/

# Run specific test
pytest tests/test_specific_feature.py
```

---

## 📞 Support

### Documentation
- **[📖 System Documentation](SYSTEM_DOCUMENTATION.md)** - Technical details
- **[🚀 Deployment Guide](DEPLOYMENT_GUIDE.md)** - Installation help
- **[🔍 Troubleshooting Guide](TROUBLESHOOTING_GUIDE.md)** - Problem solving

### Contact Information
- **Technical Support**: [Your Support Email]
- **Documentation**: [Your Documentation URL]
- **Emergency**: [Your Emergency Contact]

### Community
- **Issues**: [GitHub Issues](https://github.com/your-repo/issues)
- **Discussions**: [GitHub Discussions](https://github.com/your-repo/discussions)
- **Wiki**: [Project Wiki](https://github.com/your-repo/wiki)

### Professional Support
For enterprise deployments and professional support, contact:
- **Enterprise Support**: [Enterprise Email]
- **Consulting Services**: [Consulting Email]
- **Training**: [Training Email]

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- **ATOS Hardware**: For the tracking hardware platform
- **TAK Community**: For the TAK protocol and ecosystem
- **Open Source Contributors**: For the libraries and tools used
- **Testing Community**: For feedback and bug reports

---

**Version**: 2.1  
**Last Updated**: January 2025  
**Compatibility**: ATOS TAK Forwarder v2.0+  
**Status**: Production Ready
