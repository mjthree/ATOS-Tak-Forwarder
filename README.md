# ATOS Tracker Display Dashboard

A large-screen dashboard for monitoring up to 100 ATOS trackers in real time.

## Features

- **Real-time Monitoring:** Live tracking of up to 100 ATOS tags
- **Web Dashboard:** Clean 10x10 grid display optimized for wall-mounted screens
- **Color-coded Status:** Visual indicators for tag health and battery status
- **Comprehensive Logging:** Detailed logging of all tag updates and voltage data
- **TAK Integration:** Forward tag data to TAK servers
- **Service Mode:** Runs as a systemd service on Raspberry Pi
- **Auto-browser Launch:** Automatically opens dashboard on service start
- **Virtual Environment:** Uses Python virtual environment for clean dependency management

## Dashboard Display

- **Access:** Go to `http://[RASPBERRY_PI_IP]:5000/display` while the service is running
- **Layout:** 10x10 grid, each box shows the tracker number only
- **Color logic:**
  - **Green:** Tag is not stale and battery voltage is 3.50V or higher
  - **Yellow:** Tag is not stale and battery voltage is below 3.50V (or missing)
  - **Red:** Tag is stale (regardless of voltage)
- **Updates:** Dashboard refreshes every 2 seconds with live data from `/api/tags`
- **No title:** The dashboard is designed for clean, full-screen display with no header

## Raspberry Pi Setup

### Prerequisites

1. **Raspberry Pi OS** (Raspbian) with Python 3.7+ installed
2. **Serial connection** to your ATOS receiver (USB-to-Serial adapter)
3. **Network access** for web dashboard
4. **Git** installed on Raspberry Pi
5. **Desktop environment** (for auto-browser launch)

### Installation Steps

#### Option A: Automated Installation (Recommended)

1. **Install Git on Raspberry Pi:**
   ```bash
   sudo apt update
   sudo apt install git
   ```

2. **Clone the repository:**
   ```bash
   cd /home/pi
   git clone https://github.com/mjthree/ATOS-Tak-Forwarder.git atos-newest
   cd atos-newest
   ```

3. **Run the automated installer:**
   ```bash
   chmod +x install_service.sh
   sudo ./install_service.sh
   ```

   The installer will:
   - ✅ Install required Python packages (`python3-venv`, `python3-full`)
   - ✅ Create a Python virtual environment
   - ✅ Install Python dependencies (Flask, pyserial, Werkzeug)
   - ✅ Set up the systemd service
   - ✅ Create desktop shortcut for easy access
   - ✅ Configure proper permissions

4. **Configure your serial port:**
   - Edit `marshall_tak.py` and change `COM4` to your Raspberry Pi's serial port
   - Common ports: `/dev/ttyUSB0`, `/dev/ttyACM0`, or `/dev/ttyAMA0`
   - Find your port: `ls /dev/tty*`

5. **Start the service:**
   ```bash
   sudo systemctl start atos-tracker
   sudo systemctl enable atos-tracker
   ```

6. **Access the dashboard:**
   - The browser will automatically open to the dashboard
   - Or manually go to: `http://[RASPBERRY_PI_IP]:5000/display`

#### Option B: Manual Installation

1. **Install dependencies:**
   ```bash
   sudo apt install python3-venv python3-full
   ```

2. **Create virtual environment:**
   ```bash
   cd /home/pi/atos-newest
   python3 -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   deactivate
   ```

3. **Set up service manually:**
   ```bash
   sudo cp atos-tracker.service /etc/systemd/system/
   sudo systemctl daemon-reload
   sudo systemctl enable atos-tracker
   ```

### Service Management

```bash
# Start the service (auto-opens browser)
sudo systemctl start atos-tracker

# Stop the service
sudo systemctl stop atos-tracker

# Restart the service (auto-opens browser)
sudo systemctl restart atos-tracker

# Check service status
sudo systemctl status atos-tracker

# View live logs
sudo journalctl -u atos-tracker -f

# Enable auto-start on boot
sudo systemctl enable atos-tracker

# Disable auto-start on boot
sudo systemctl disable atos-tracker
```

### Desktop Shortcuts

After installation, you'll have:
- **ATOS Dashboard** desktop shortcut - Double-click to start service and open browser
- **Manual startup script** - Run `./start_dashboard.sh` to start service and open browser

### Accessing the Dashboard

- **Auto-launch:** Browser opens automatically when service starts
- **Manual access:** `http://[RASPBERRY_PI_IP]:5000/display`
- **Control Interface:** `http://[RASPBERRY_PI_IP]:5000/`
- **API Endpoint:** `http://[RASPBERRY_PI_IP]:5000/api/tags`

### Finding Your Raspberry Pi's IP Address

```bash
hostname -I
```

### Troubleshooting

1. **Service won't start:**
   ```bash
   sudo journalctl -u atos-tracker -n 50
   ```

2. **Browser doesn't open:**
   - Check if desktop environment is running: `ps aux | grep -E "(xfce|gnome|kde|lxde|mate)"`
   - Ensure DISPLAY is set: `export DISPLAY=:0`
   - Check if Chromium is installed: `which chromium-browser`

3. **Serial port issues:**
   - Check if your USB device is recognized: `lsusb`
   - Check available serial ports: `ls /dev/tty*`
   - Ensure user has serial port access: `sudo usermod -a -G dialout pi`

4. **Virtual environment issues:**
   - Recreate virtual environment: `rm -rf venv && python3 -m venv venv`
   - Reinstall dependencies: `source venv/bin/activate && pip install -r requirements.txt`

5. **Firewall issues:**
   ```bash
   sudo ufw status
   sudo ufw allow 5000
   ```

6. **Permission issues:**
   ```bash
   sudo chown -R pi:pi /home/pi/atos-newest
   chmod +x /home/pi/atos-newest/marshall_tak.py
   ```

## Development Setup (Windows/Linux)

For development and testing on your local machine:

1. **Clone the repository (if not already done):**
   ```bash
   git clone https://github.com/mjthree/ATOS-Tak-Forwarder.git
   cd ATOS-Tak-Forwarder
   ```

2. **Install dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Run the application:**
   ```bash
   python marshall_tak.py
   ```

4. **Access the dashboard:**
   - Go to `http://localhost:5000/display`

## Git Workflow

### Updating the Application

**From your development machine:**
```bash
git add .
git commit -m "Description of your changes"
git push
```

**On Raspberry Pi:**
```bash
cd /home/pi/atos-newest
git pull
sudo systemctl restart atos-tracker
```

See `GIT_SETUP.md` for detailed Git workflow and best practices.

## Configuration Files

- `marshall_tak.py` - Main application with serial port configuration
- `forwarding_config.json` - TAK forwarding settings
- `tak_server_config.json` - TAK server connection settings. Includes
  `send_interval` which controls how often all valid tags are forwarded to the
  TAK server as a batch. The value can be adjusted on the web dashboard
  (2–60 seconds).
- `templates.json` - Saved configuration templates

## Logging

The application creates comprehensive logs in the `comprehensive_logs/` directory:
- `all_tag_updates_*.jsonl` - All tag updates with timestamps
- `voltage_tracking_*.csv` - Voltage readings per tag
- `tag_status_*.jsonl` - Status changes (GPS, voltage thresholds)
- `voltage_analysis_*.json` - Voltage threshold analysis
- `tak_forwarding_*.log` - Every COT message sent to the TAK server with the full XML payload

## API Endpoints

- `GET /api/tags` - Returns current status of all 100 tags
- `GET /api/data` - Returns packet history and statistics
- `POST /api/tak_server` - Configure TAK server settings (IP, port, and
  `send_interval`). The interval controls how often all valid tags are forwarded.
- `POST /api/forward_all` - Enable/disable forwarding for all tags
- `POST /api/tag/{id}/forward` - Configure individual tag forwarding
- `POST /api/tag/{id}/callsign` - Set custom callsign for tag
- `POST /api/tag/{id}/color` - Set custom color for tag

## Auto-Start Features

- **Service auto-start:** Service starts automatically on boot
- **Browser auto-launch:** Dashboard opens automatically when service starts
- **Desktop shortcut:** Easy one-click access to start dashboard
- **Virtual environment:** Clean dependency management

This dashboard is ideal for wall displays or quick status checks during operations. 
