#!/bin/bash

# ATOS Tracker Service Installation Script for Raspberry Pi
# This script sets up the ATOS tracker dashboard as a systemd service

set -e

echo "🚀 ATOS Tracker Service Installation"
echo "===================================="

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ This script must be run as root (use sudo)"
    exit 1
fi

# Get the current directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SERVICE_NAME="atos-tracker"

echo "📁 Installing from: $SCRIPT_DIR"

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3 first."
    exit 1
fi

# Check if pip3 is installed
if ! command -v pip3 &> /dev/null; then
    echo "❌ pip3 is not installed. Please install pip3 first."
    exit 1
fi

# Install Python dependencies
echo "📦 Installing Python dependencies..."
cd "$SCRIPT_DIR"
pip3 install -r requirements.txt

# Copy service file to systemd directory
echo "🔧 Installing systemd service..."
cp "$SCRIPT_DIR/atos-tracker.service" /etc/systemd/system/

# Reload systemd daemon
systemctl daemon-reload

# Enable the service to start on boot
echo "✅ Enabling service to start on boot..."
systemctl enable $SERVICE_NAME

# Set proper permissions
echo "🔐 Setting file permissions..."
chown -R pi:pi "$SCRIPT_DIR"
chmod +x "$SCRIPT_DIR/marshall_tak.py"

echo ""
echo "🎉 Installation complete!"
echo ""
echo "📋 Next steps:"
echo "1. Configure your serial port in marshall_tak.py (currently set to COM4)"
echo "2. Start the service: sudo systemctl start atos-tracker"
echo "3. Check status: sudo systemctl status atos-tracker"
echo "4. View logs: sudo journalctl -u atos-tracker -f"
echo "5. Access dashboard: http://[RASPBERRY_PI_IP]:5000/display"
echo ""
echo "🔧 Service management commands:"
echo "   Start:   sudo systemctl start atos-tracker"
echo "   Stop:    sudo systemctl stop atos-tracker"
echo "   Restart: sudo systemctl restart atos-tracker"
echo "   Status:  sudo systemctl status atos-tracker"
echo "   Logs:    sudo journalctl -u atos-tracker -f"
echo ""
echo "🌐 Don't forget to open port 5000 in your firewall!"
echo "   Run: sudo ufw allow 5000" 