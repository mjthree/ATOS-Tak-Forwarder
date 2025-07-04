#!/bin/bash

# ATOS Dashboard Startup Script
# This script starts the service and opens the browser to the dashboard

echo "🚀 Starting ATOS Tracker Dashboard..."

# Start the service
sudo systemctl start atos-tracker

# Wait a moment for the service to start
sleep 5

# Check if service is running
if systemctl is-active --quiet atos-tracker; then
    echo "✅ Service is running"
    
    # Set display environment
    export DISPLAY=:0
    
    # Get the Pi's IP address
    PI_IP=$(hostname -I | awk '{print $1}')
    
    echo "🌐 Opening dashboard at http://$PI_IP:5000/display"
    
    # Open browser in background
    chromium-browser --start-maximized http://$PI_IP:5000/display &
    
    echo "🎉 Dashboard opened!"
else
    echo "❌ Service failed to start"
    echo "Check logs with: sudo journalctl -u atos-tracker -f"
fi 