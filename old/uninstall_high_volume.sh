#!/bin/bash

# High-Volume ATOS TAK Forwarder Uninstaller

set -e

echo "🗑️ Uninstalling High-Volume ATOS TAK Forwarder"
echo "=============================================="

# Check if running as root
if [ "$EUID" -ne 0 ]; then
    echo "❌ Please run as root (use sudo)"
    exit 1
fi

INSTALL_DIR="/opt/atos-tak-forwarder-high-volume"

# Stop and disable service
echo "🛑 Stopping service..."
systemctl stop atos-high-volume 2>/dev/null || true
systemctl disable atos-high-volume 2>/dev/null || true

# Remove systemd service file
echo "🔧 Removing systemd service..."
rm -f /etc/systemd/system/atos-high-volume.service

# Reload systemd
systemctl daemon-reload

# Remove installation directory
echo "📁 Removing installation directory..."
if [ -d "$INSTALL_DIR" ]; then
    echo "   Backup available at: ${INSTALL_DIR}_backup_$(date +%Y%m%d_%H%M%S)"
    cp -r "$INSTALL_DIR" "${INSTALL_DIR}_backup_$(date +%Y%m%d_%H%M%S)" 2>/dev/null || true
    rm -rf "$INSTALL_DIR"
else
    echo "   Installation directory not found"
fi

echo ""
echo "✅ Uninstallation complete!"
echo ""
echo "📁 Installation directory removed: $INSTALL_DIR"
echo "🔧 Systemd service removed: atos-high-volume"
echo ""
echo "💾 Backup created (if installation existed)"
echo ""
echo "🎯 High-Volume ATOS TAK Forwarder has been removed." 