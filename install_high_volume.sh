#!/bin/bash

# High-Volume ATOS TAK Forwarder Installer
# Simple installation that keeps everything in one directory

set -e

echo "🚀 Installing High-Volume ATOS TAK Forwarder"
echo "============================================="

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run as root (use sudo)"
    exit 1
fi

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INSTALL_DIR="/opt/atos-tak-forwarder-high-volume"

echo "📁 Installing to: $INSTALL_DIR"

# Create installation directory
mkdir -p "$INSTALL_DIR"
cd "$INSTALL_DIR"

# Copy files from script directory
echo "📋 Copying files..."
cp "$SCRIPT_DIR/marshall_tak_high_volume.py" .
cp "$SCRIPT_DIR/requirements.txt" .
cp -r "$SCRIPT_DIR/templates" .

# Create necessary directories
mkdir -p comprehensive_logs
mkdir -p command_link_logs

# Set permissions
chown -R root:root "$INSTALL_DIR"
chmod +x marshall_tak_high_volume.py

# Install Python dependencies
echo "🐍 Installing Python dependencies..."
if command -v pip3 &> /dev/null; then
    pip3 install -r requirements.txt
elif command -v python3 -m pip &> /dev/null; then
    python3 -m pip install -r requirements.txt
else
    echo "⚠️ pip not found, installing pip first..."
    sudo apt update
    sudo apt install -y python3-pip
    pip3 install -r requirements.txt
fi

# Create simple systemd service
echo "🔧 Creating systemd service..."
cat > /etc/systemd/system/atos-high-volume.service << EOF
[Unit]
Description=High-Volume ATOS TAK Forwarder (100+ devices)
After=network.target

[Service]
Type=simple
User=root
WorkingDirectory=$INSTALL_DIR
ExecStart=/usr/bin/python3 marshall_tak_high_volume.py
Restart=always
RestartSec=10
StandardOutput=journal
StandardError=journal

[Install]
WantedBy=multi-user.target
EOF

# Reload systemd and enable service
systemctl daemon-reload
systemctl enable atos-high-volume

echo ""
echo "✅ Installation complete!"
echo ""
echo "📁 Installation directory: $INSTALL_DIR"
echo "🔧 Service name: atos-high-volume"
echo "🌐 Web interface: http://localhost:5000"
echo "📊 Dashboard: http://localhost:5000/display"
echo ""
echo "🚀 To start the service:"
echo "   sudo systemctl start atos-high-volume"
echo ""
echo "📋 To check status:"
echo "   sudo systemctl status atos-high-volume"
echo ""
echo "📝 To view logs:"
echo "   sudo journalctl -u atos-high-volume -f"
echo ""
echo "🛑 To stop the service:"
echo "   sudo systemctl stop atos-high-volume"
echo ""
echo "🗑️ To uninstall:"
echo "   sudo systemctl stop atos-high-volume"
echo "   sudo systemctl disable atos-high-volume"
echo "   sudo rm /etc/systemd/system/atos-high-volume.service"
echo "   sudo rm -rf $INSTALL_DIR"
echo ""
echo "🎯 Ready for high-volume operations (100+ devices)!" 