#!/bin/bash

# ATOS TAK Forwarder TDMA Testing Service Installer
# Installs service to run from current testing directory

set -e

echo "🚀 Installing ATOS TAK Forwarder TDMA Testing Service"
echo "====================================================="

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run as root (use sudo)"
    exit 1
fi

# Get the current directory
CURRENT_DIR="$(pwd)"
SERVICE_FILE="atos-tdma.service"

echo "📁 Running from: $CURRENT_DIR"
echo "🔧 Service file: $SERVICE_FILE"

# Check if service file exists
if [ ! -f "$SERVICE_FILE" ]; then
    echo "❌ Service file $SERVICE_FILE not found in current directory"
    exit 1
fi

# Check if TDMA script exists
if [ ! -f "marshall_tak_tdma.py" ]; then
    echo "❌ marshall_tak_tdma.py not found in current directory"
    exit 1
fi

# Install Python dependencies if needed
echo "🐍 Checking Python dependencies..."
if ! python3 -c "import flask, serial" 2>/dev/null; then
    echo "📦 Installing Python dependencies..."
    if [ -f "requirements.txt" ]; then
        pip3 install --break-system-packages -r requirements.txt
    else
        pip3 install --break-system-packages flask pyserial
    fi
else
    echo "✅ Python dependencies already installed"
fi

# Copy service file to systemd directory
echo "🔧 Installing systemd service..."
cp "$SERVICE_FILE" /etc/systemd/system/

# Set executable permissions on the Python script
chmod +x marshall_tak_tdma.py

# Reload systemd and enable service
systemctl daemon-reload
systemctl enable atos-tdma

echo ""
echo "✅ TDMA Testing Service Installation Complete!"
echo ""
echo "📁 Running from: $CURRENT_DIR"
echo "🔧 Service name: atos-tdma"
echo "🌐 Web interface: http://localhost:5000"
echo "📊 Dashboard: http://localhost:5000/display"
echo ""
echo "🚀 To start the service:"
echo "   sudo systemctl start atos-tdma"
echo ""
echo "📋 To check status:"
echo "   sudo systemctl status atos-tdma"
echo ""
echo "📝 To view logs:"
echo "   sudo journalctl -u atos-tdma -f"
echo ""
echo "🛑 To stop the service:"
echo "   sudo systemctl stop atos-tdma"
echo ""
echo "🗑️ To uninstall:"
echo "   sudo systemctl stop atos-tdma"
echo "   sudo systemctl disable atos-tdma"
echo "   sudo rm /etc/systemd/system/atos-tdma.service"
echo "   sudo systemctl daemon-reload"
echo ""
echo "🎯 TDMA Testing Service Ready!" 