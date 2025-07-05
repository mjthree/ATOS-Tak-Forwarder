#!/bin/bash

# ATOS TAK Forwarder TDMA Service Installer
# Installs service to run from current directory

set -e

echo "🚀 Installing APEX SHIELD - ATOS TAK Forwarder TDMA Service"
echo "============================================================"

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

# Install system dependencies
echo "📦 Installing system dependencies..."
apt update
apt install -y python3-pip python3-venv git curl wget

# Install Python dependencies if needed
echo "🐍 Checking Python dependencies..."
if ! python3 -c "import flask, serial, psutil" 2>/dev/null; then
    echo "📦 Installing Python dependencies..."
    if [ -f "requirements.txt" ]; then
        pip3 install --break-system-packages -r requirements.txt
        # Install additional dependencies not in requirements.txt
        pip3 install --break-system-packages psutil python-dateutil
    else
        pip3 install --break-system-packages flask pyserial psutil python-dateutil werkzeug
    fi
else
    echo "✅ Python dependencies already installed"
fi

# Create necessary directories
echo "📁 Creating necessary directories..."
mkdir -p comprehensive_logs
mkdir -p database_archives
mkdir -p backups

# Set proper permissions
echo "🔐 Setting file permissions..."
chmod +x marshall_tak_tdma.py
chmod 600 *.json 2>/dev/null || true
chmod 755 templates/ 2>/dev/null || true
chmod 644 templates/*.html 2>/dev/null || true

# Copy service file to systemd directory
echo "🔧 Installing systemd service..."
cp "$SERVICE_FILE" /etc/systemd/system/

# Reload systemd and enable service
systemctl daemon-reload
systemctl enable atos-tdma

# Ask about HTTPS setup
echo ""
echo "🔒 HTTPS Setup (Optional)"
echo "========================="
echo "This will set up HTTPS access using mkcert for local certificates."
echo "This is recommended for secure LAN access and admin panel protection."
echo ""
read -p "Do you want to set up HTTPS with mkcert and nginx? (y/n): " setup_https

if [[ $setup_https =~ ^[Yy]$ ]]; then
    echo ""
    echo "🔐 Admin Password Setup"
    echo "======================="
    echo "The admin panel requires a password for database management operations."
    echo "This password will be used to access the hidden /admin page."
    echo ""
    read -s -p "Enter admin password (will be hidden): " admin_password
    echo ""
    read -s -p "Confirm admin password: " admin_password_confirm
    echo ""
    
    if [ "$admin_password" != "$admin_password_confirm" ]; then
        echo "❌ Passwords don't match. HTTPS setup cancelled."
        setup_https="n"
    else
        echo "✅ Password confirmed. Setting up HTTPS..."
        
        # Install mkcert
        echo "📦 Installing mkcert..."
        apt install -y mkcert
        
        # Install nginx
        echo "📦 Installing nginx..."
        apt install -y nginx
        
        # Create SSL directory
        mkdir -p /etc/ssl/atos-tak
        
        # Get Pi's hostname and IP
        PI_HOSTNAME=$(hostname)
        PI_IP=$(hostname -I | awk '{print $1}')
        
        echo "🔐 Generating certificate for $PI_HOSTNAME and $PI_IP..."
        
        # Generate certificate
        mkcert -install
        mkcert -key-file /etc/ssl/atos-tak/atos-tak.key -cert-file /etc/ssl/atos-tak/atos-tak.crt "$PI_HOSTNAME" "$PI_IP" "localhost" "127.0.0.1"
        
        # Set proper permissions
        chmod 600 /etc/ssl/atos-tak/atos-tak.key
        chmod 644 /etc/ssl/atos-tak/atos-tak.crt
        
        # Create nginx configuration
        echo "🔧 Creating nginx configuration..."
        cat > /etc/nginx/sites-available/atos-tak << EOF
server {
    listen 80;
    server_name $PI_HOSTNAME $PI_IP;
    return 301 https://\$server_name\$request_uri;
}

server {
    listen 443 ssl;
    server_name $PI_HOSTNAME $PI_IP;
    
    ssl_certificate /etc/ssl/atos-tak/atos-tak.crt;
    ssl_certificate_key /etc/ssl/atos-tak/atos-tak.key;
    
    location / {
        proxy_pass http://127.0.0.1:5000;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}
EOF
        
        # Enable the site
        ln -sf /etc/nginx/sites-available/atos-tak /etc/nginx/sites-enabled/
        rm -f /etc/nginx/sites-enabled/default
        
        # Test nginx configuration
        if nginx -t; then
            systemctl restart nginx
            systemctl enable nginx
            echo "✅ nginx configured and started"
        else
            echo "❌ nginx configuration failed"
            setup_https="n"
        fi
        
        # Update the Python script with the new password
        echo "🔐 Updating admin password in application..."
        # Create a temporary Python script to update the password hash
                cat > /tmp/update_password.py << PYTHON_EOF
import hashlib
import sys

if len(sys.argv) != 2:
    print("Usage: python3 update_password.py <password>")
    sys.exit(1)

password = sys.argv[1]
password_hash = hashlib.sha256(password.encode('utf-8')).hexdigest()

print(f"Password hash: {password_hash}")

# Read the original file
with open('marshall_tak_tdma.py', 'r') as f:
    content = f.read()

# Replace the hardcoded hash with the new password hash
old_line = "ADMIN_PASSWORD_HASH = 'b1e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2e2'"
new_line = f"ADMIN_PASSWORD_HASH = '{password_hash}'"

if old_line in content:
    content = content.replace(old_line, new_line)
    print("✅ Password updated in marshall_tak_tdma.py")
else:
    print("❌ Could not find password line to update")
    sys.exit(1)

# Write back
with open('marshall_tak_tdma.py', 'w') as f:
    f.write(content)
PYTHON_EOF

        # Generate the password hash first
        password_hash=$(python3 -c "import hashlib; print(hashlib.sha256('$admin_password'.encode('utf-8')).hexdigest())")
        python3 /tmp/update_password.py "$admin_password"
        rm /tmp/update_password.py
        
        echo ""
        echo "🔒 HTTPS Setup Complete!"
        echo "========================"
        echo "✅ Certificate generated for: $PI_HOSTNAME, $PI_IP"
        echo "✅ nginx configured for HTTPS"
        echo "✅ Admin password set"
        echo ""
        echo "🌐 Access URLs:"
        echo "   HTTP (redirects to HTTPS): http://$PI_IP"
        echo "   HTTPS: https://$PI_IP"
        echo "   Admin Panel: https://$PI_IP/admin"
        echo ""
        echo "📋 To trust this certificate on other devices:"
        echo "   1. Copy the CA certificate: /root/.local/share/mkcert/rootCA.pem"
        echo "   2. Install it as a trusted CA on your devices"
        echo "   3. Certificate valid for ~2.3 years, CA valid for 10 years"
        echo ""
    fi
else
    echo ""
    echo "ℹ️  HTTPS setup skipped."
    echo "   - Admin panel will be accessible without password"
    echo "   - Access via HTTP only: http://[PI_IP]:5000"
    echo "   - You can set up HTTPS later by running this installer again"
    echo ""
fi

echo ""
echo "✅ APEX SHIELD - ATOS TDMA Service Installation Complete!"
echo ""
echo "🏢 Company: APEX SHIELD"
echo "📡 System: ATOS Tag Tracking & TAK Integration"
echo "📁 Running from: $CURRENT_DIR"
echo "🔧 Service name: atos-tdma"
echo ""
if [[ $setup_https =~ ^[Yy]$ ]]; then
    echo "🔒 HTTPS Enabled:"
    echo "   Main Interface: https://$PI_IP"
    echo "   Display Dashboard: https://$PI_IP/display"
    echo "   Database Interface: https://$PI_IP/database"
    echo "   Performance Monitor: https://$PI_IP/performance"
    echo "   Log Viewer: https://$PI_IP/logs"
    echo "   Admin Panel: https://$PI_IP/admin (password protected)"
    echo ""
    echo "📊 HTTP (redirects to HTTPS): http://$PI_IP"
else
    echo "🌐 HTTP Access:"
    echo "   Main Interface: http://localhost:5000"
    echo "   Display Dashboard: http://localhost:5000/display"
    echo "   Database Interface: http://localhost:5000/database"
    echo "   Performance Monitor: http://localhost:5000/performance"
    echo "   Log Viewer: http://localhost:5000/logs"
    echo "   Admin Panel: http://localhost:5000/admin (no password)"
    echo ""
    echo "📋 To access from other devices, use your Pi's IP address"
    echo "   Example: http://[PI_IP]:5000"
fi
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
if [[ $setup_https =~ ^[Yy]$ ]]; then
    echo "   sudo rm /etc/nginx/sites-enabled/atos-tak"
    echo "   sudo rm /etc/nginx/sites-available/atos-tak"
    echo "   sudo rm -rf /etc/ssl/atos-tak"
    echo "   sudo systemctl restart nginx"
fi
echo ""
echo "🎯 APEX SHIELD - ATOS TDMA Service Ready!"
echo ""
echo "📚 New Features Available:"
echo "   🔐 Admin Panel: Database management and operations"
echo "     - Archive, download, clear, and merge databases"
echo "     - Clean up old data and invalid tags"
echo "     - Manage archived database files"
echo "   📊 Database Interface: Historical data analysis and export"
echo "   📈 Performance Monitor: Real-time system health metrics"
echo "   📋 Log Viewer: Web-based log management with filtering"
echo "   🔒 Password Protection: Secure admin access (if HTTPS enabled)"
echo "   📈 Advanced Logging: SQLite database with comprehensive tracking"
echo "   🎛️  Multicast Control: Enable/disable multicast with dropdown"
echo "   📋 Template System: Save and load configurations"
echo "   📊 Export Capabilities: CSV and KML data export"
echo "   🔄 Backup & Recovery: Automated backup and disaster recovery"
echo ""
echo "📖 Documentation Available:"
echo "   📖 System Documentation: SYSTEM_DOCUMENTATION.md"
echo "   🚀 Deployment Guide: DEPLOYMENT_GUIDE.md"
echo "   🔍 Troubleshooting Guide: TROUBLESHOOTING_GUIDE.md"
echo "   📚 Main Documentation: README.md"
echo ""
echo "🎯 APEX SHIELD - ATOS TDMA Service Ready!" 