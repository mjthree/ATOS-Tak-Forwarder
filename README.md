# ATOS Tracker Display Dashboard

A large-screen dashboard for monitoring up to 100 ATOS trackers in real time.

## Features

- **Real-time Monitoring:** Live tracking of up to 100 ATOS tags
- **Web Dashboard:** Clean 10x10 grid display optimized for wall-mounted screens
- **Color-coded Status:** Visual indicators for tag health and battery status
- **Comprehensive Logging:** Detailed logging of all tag updates and voltage data
- **TAK Integration:** Forward tag data to TAK servers
- **Service Mode:** Runs as a systemd service on Raspberry Pi

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

### Installation Steps

#### Option A: Git Deployment (Recommended)

1. **Install Git on Raspberry Pi:**
   ```bash
   sudo apt update
   sudo apt install git
   ```

2. **Clone the repository:**
   ```bash
   cd /home/pi
   git clone https://github.com/yourusername/atos-tracker-dashboard.git atos-newest
   cd atos-newest
   ```

#### Option B: Manual Copy

1. **Copy the project to your Raspberry Pi:**
   ```bash
   cd /home/pi
   # Copy your project files to /home/pi/atos-newest/
   ```

2. **Make scripts executable:**
   ```bash
   chmod +x install_service.sh
   chmod +x setup_firewall.sh
   ```

3. **Install the service:**
   ```bash
   sudo ./install_service.sh
   ```

4. **Configure the firewall:**
   ```bash
   sudo ./setup_firewall.sh
   ```

5. **Configure your serial port:**
   - Edit `marshall_tak.py` and change `COM4` to your Raspberry Pi's serial port
   - Common ports: `/dev/ttyUSB0`, `/dev/ttyACM0`, or `/dev/ttyAMA0`
   - Find your port: `ls /dev/tty*`

6. **Start the service:**
   ```bash
   sudo systemctl start atos-tracker
   ```

7. **Check status:**
   ```bash
   sudo systemctl status atos-tracker
   ```

### Service Management

```bash
# Start the service
sudo systemctl start atos-tracker

# Stop the service
sudo systemctl stop atos-tracker

# Restart the service
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

### Accessing the Dashboard

- **Main Dashboard:** `http://[RASPBERRY_PI_IP]:5000/display`
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

2. **Serial port issues:**
   - Check if your USB device is recognized: `lsusb`
   - Check available serial ports: `ls /dev/tty*`
   - Ensure user has serial port access: `sudo usermod -a -G dialout pi`

3. **Firewall issues:**
   ```bash
   sudo ufw status
   sudo ufw allow 5000
   ```

4. **Permission issues:**
   ```bash
   sudo chown -R pi:pi /home/pi/atos-newest
   chmod +x /home/pi/atos-newest/marshall_tak.py
   ```

## Development Setup (Windows/Linux)

For development and testing on your local machine:

1. **Clone the repository (if not already done):**
   ```bash
   git clone https://github.com/yourusername/atos-tracker-dashboard.git
   cd atos-tracker-dashboard
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
  `send_interval` to control how often tag data is forwarded. The interval
  can be adjusted on the web dashboard via a drop-down menu (2–60 seconds).
  A background thread forwards all active tags using this schedule.
- `templates.json` - Saved configuration templates

## Logging

The application creates comprehensive logs in the `comprehensive_logs/` directory:
- `all_tag_updates_*.jsonl` - All tag updates with timestamps
- `voltage_tracking_*.csv` - Voltage readings per tag
- `tag_status_*.jsonl` - Status changes (GPS, voltage thresholds)
- `voltage_analysis_*.json` - Voltage threshold analysis
- `tak_forwarding_*.log` - Every COT message sent to the TAK server

## API Endpoints

- `GET /api/tags` - Returns current status of all 100 tags
- `GET /api/data` - Returns packet history and statistics
- `POST /api/tak_server` - Configure TAK server settings (IP, port, and
  `send_interval`). The interval controls how often tag data is forwarded.
- `POST /api/forward_all` - Enable/disable forwarding for all tags
- `POST /api/tag/{id}/forward` - Configure individual tag forwarding
- `POST /api/tag/{id}/callsign` - Set custom callsign for tag
- `POST /api/tag/{id}/color` - Set custom color for tag

This dashboard is ideal for wall displays or quick status checks during operations. 
