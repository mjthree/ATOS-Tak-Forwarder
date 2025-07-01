#!/bin/bash

# ATOS Tracker Firewall Configuration Script
# This script configures the firewall to allow access to the ATOS tracker dashboard

set -e

echo "🔥 ATOS Tracker Firewall Configuration"
echo "======================================"

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ This script must be run as root (use sudo)"
    exit 1
fi

# Check if ufw is installed
if ! command -v ufw &> /dev/null; then
    echo "❌ ufw (Uncomplicated Firewall) is not installed."
    echo "   Install it with: sudo apt update && sudo apt install ufw"
    exit 1
fi

echo "🔧 Configuring firewall..."

# Enable ufw if not already enabled
if ! ufw status | grep -q "Status: active"; then
    echo "📡 Enabling UFW firewall..."
    ufw --force enable
fi

# Allow SSH (important to keep this!)
echo "🔑 Allowing SSH access..."
ufw allow ssh

# Allow HTTP access to the dashboard
echo "🌐 Allowing HTTP access on port 5000..."
ufw allow 5000

# Show current status
echo ""
echo "📊 Current firewall status:"
ufw status numbered

echo ""
echo "✅ Firewall configuration complete!"
echo ""
echo "🌐 Your ATOS tracker dashboard should now be accessible at:"
echo "   http://[RASPBERRY_PI_IP]:5000/display"
echo ""
echo "📱 To find your Raspberry Pi's IP address, run:"
echo "   hostname -I"
echo ""
echo "🔧 Additional firewall commands:"
echo "   View status: sudo ufw status"
echo "   View logs:   sudo ufw status verbose"
echo "   Reset rules: sudo ufw reset" 