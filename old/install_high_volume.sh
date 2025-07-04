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
echo "   Checking for system packages first..."

# Try to install via apt first (preferred for system packages)
if apt list --installed | grep -q "python3-flask" && apt list --installed | grep -q "python3-serial"; then
    echo "   System packages already installed"
elif apt install -y python3-flask python3-serial python3-werkzeug 2>/dev/null; then
    echo "   Installed via system packages"
else
    echo "   System packages not available, trying pip with --break-system-packages..."
    if command -v pip3 &> /dev/null; then
        pip3 install --break-system-packages -r requirements.txt
    elif python3 -c "import pip" &> /dev/null; then
        python3 -m pip install --break-system-packages -r requirements.txt
    else
        echo "⚠️ pip not found, installing pip first..."
        apt update
        apt install -y python3-pip
        pip3 install --break-system-packages -r requirements.txt
    fi
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
        apt update
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
        cat > /tmp/update_password.py << 'PYTHON_EOF'
import hashlib
import sys

if len(sys.argv) != 2:
    print("Usage: python3 update_password.py <password>")
    sys.exit(1)

password = sys.argv[1]
password_hash = hashlib.sha256(password.encode('utf-8')).hexdigest()

print(f"Password hash: {password_hash}")

# Read the original file
with open('marshall_tak_high_volume.py', 'r') as f:
    content = f.read()

# Replace the password hash
content = content.replace(
    "def _get_admin_password_hash():",
    f"def _get_admin_password_hash():\n    return '{password_hash}'"
)

# Write back
with open('marshall_tak_high_volume.py', 'w') as f:
    f.write(content)

print("✅ Password updated in marshall_tak_high_volume.py")
PYTHON_EOF

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
echo "✅ Installation complete!"
echo ""
echo "📁 Installation directory: $INSTALL_DIR"
echo "🔧 Service name: atos-high-volume"
echo ""
if [[ $setup_https =~ ^[Yy]$ ]]; then
    echo "🔒 HTTPS Enabled:"
    echo "   Main Interface: https://$PI_IP"
    echo "   Display Dashboard: https://$PI_IP/display"
    echo "   Database Interface: https://$PI_IP/database"
    echo "   Admin Panel: https://$PI_IP/admin (password protected)"
    echo ""
    echo "📊 HTTP (redirects to HTTPS): http://$PI_IP"
else
    echo "🌐 HTTP Access:"
    echo "   Main Interface: http://localhost:5000"
    echo "   Display Dashboard: http://localhost:5000/display"
    echo "   Database Interface: http://localhost:5000/database"
    echo "   Admin Panel: http://localhost:5000/admin (no password)"
    echo ""
    echo "📋 To access from other devices, use your Pi's IP address"
    echo "   Example: http://[PI_IP]:5000"
fi
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
if [[ $setup_https =~ ^[Yy]$ ]]; then
    echo "   sudo rm /etc/nginx/sites-enabled/atos-tak"
    echo "   sudo rm /etc/nginx/sites-available/atos-tak"
    echo "   sudo rm -rf /etc/ssl/atos-tak"
    echo "   sudo systemctl restart nginx"
fi
echo "   sudo systemctl daemon-reload"
echo ""
echo "🎯 Ready for high-volume operations (100+ devices)!"
echo ""
echo "📚 New Features Available:"
echo "   🔐 Admin Panel: Database management and operations"
echo "   📊 Database Interface: Historical data analysis and export"
echo "   🔒 Password Protection: Secure admin access (if HTTPS enabled)"
echo "   📈 Advanced Logging: SQLite database with comprehensive tracking"
echo "   🎛️  Multicast Control: Enable/disable multicast with dropdown"
echo "   📋 Template System: Save and load configurations"
echo ""
echo "📖 See HIGH_VOLUME_README.md for detailed documentation and troubleshooting" 