# Raspberry Pi Deployment Checklist

## Pre-Installation

- [ ] Raspberry Pi OS (Raspbian) installed and updated
- [ ] Python 3.7+ installed (`python3 --version`)
- [ ] Git installed (`git --version`)
- [ ] Desktop environment running (for auto-browser launch)
- [ ] ATOS receiver connected via USB
- [ ] Network connection established
- [ ] SSH access enabled (if remote setup)

## Installation

- [ ] Repository cloned to `/home/pi/atos-newest/`:
  ```bash
  cd /home/pi
  git clone https://github.com/mjthree/ATOS-Tak-Forwarder.git atos-newest
  cd atos-newest
  ```
- [ ] Automated installer run:
  ```bash
  chmod +x install_service.sh
  sudo ./install_service.sh
  ```
- [ ] Virtual environment created and dependencies installed
- [ ] Systemd service installed and enabled
- [ ] Desktop shortcut created
- [ ] Firewall configured (optional): `sudo ufw allow 5000`

## Serial Port Configuration

- [ ] Serial port identified:
  ```bash
  ls /dev/tty*
  lsusb
  ```
- [ ] Port name updated in `marshall_tak.py`:
  - Changed from `COM4` to `/dev/ttyUSB0` (or appropriate port)
- [ ] User added to dialout group:
  ```bash
  sudo usermod -a -G dialout pi
  ```
- [ ] Logged out and back in (for group changes to take effect)

## Service Setup

- [ ] Service started: `sudo systemctl start atos-tracker`
- [ ] Service status checked: `sudo systemctl status atos-tracker`
- [ ] Service enabled for auto-start: `sudo systemctl enable atos-tracker`
- [ ] Browser auto-launch verified (dashboard opens automatically)
- [ ] Logs checked for errors: `sudo journalctl -u atos-tracker -n 20`

## Network Configuration

- [ ] Raspberry Pi IP address noted: `hostname -I`
- [ ] Firewall status verified: `sudo ufw status` (if ufw installed)
- [ ] Port 5000 allowed: `sudo ufw allow 5000` (if ufw installed)
- [ ] Network connectivity tested from other devices

## Testing

- [ ] Dashboard accessible: `http://[RASPBERRY_PI_IP]:5000/display`
- [ ] Control interface accessible: `http://[RASPBERRY_PI_IP]:5000/`
- [ ] API endpoint responding: `http://[RASPBERRY_PI_IP]:5000/api/tags`
- [ ] Serial data being received (check logs)
- [ ] Tags appearing in dashboard with correct colors
- [ ] Browser opens automatically on service start
- [ ] Desktop shortcut works correctly

## Troubleshooting Commands

### Service Issues
```bash
# Check service status
sudo systemctl status atos-tracker

# View recent logs
sudo journalctl -u atos-tracker -n 50

# Restart service (auto-opens browser)
sudo systemctl restart atos-tracker

# Check if service is enabled
sudo systemctl is-enabled atos-tracker
```

### Browser Launch Issues
```bash
# Check if desktop environment is running
ps aux | grep -E "(xfce|gnome|kde|lxde|mate)"

# Check if Chromium is installed
which chromium-browser

# Set display manually
export DISPLAY=:0

# Test browser launch
chromium-browser http://localhost:5000/display
```

### Virtual Environment Issues
```bash
# Check virtual environment
ls -la venv/

# Recreate virtual environment
rm -rf venv
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
deactivate

# Check service uses virtual environment
sudo systemctl status atos-tracker
```

### Serial Port Issues
```bash
# List serial ports
ls /dev/tty*

# Check USB devices
lsusb

# Check user groups
groups pi

# Test serial port manually
sudo apt install minicom
minicom -D /dev/ttyUSB0 -b 115200
```

### Network Issues
```bash
# Check firewall status
sudo ufw status

# Check if port is listening
sudo netstat -tlnp | grep 5000

# Test local access
curl http://localhost:5000/api/tags

# Check network interfaces
ip addr show
```

### Permission Issues
```bash
# Fix file permissions
sudo chown -R pi:pi /home/pi/atos-newest
chmod +x /home/pi/atos-newest/marshall_tak.py

# Fix serial port permissions
sudo chmod 666 /dev/ttyUSB0

# Fix virtual environment permissions
sudo chown -R pi:pi /home/pi/atos-newest/venv
```

## Final Verification

- [ ] Service starts automatically on boot
- [ ] Browser opens automatically when service starts
- [ ] Dashboard displays correctly on target screen
- [ ] Serial data flows continuously
- [ ] Logs are being created in `comprehensive_logs/`
- [ ] Network access works from intended devices
- [ ] No error messages in service logs
- [ ] Desktop shortcut works correctly

## Maintenance

- [ ] Regular log rotation configured (optional)
- [ ] Backup strategy for configuration files
- [ ] Monitoring setup for service health
- [ ] Update strategy for application updates

## Emergency Procedures

### Service Won't Start
1. Check logs: `sudo journalctl -u atos-tracker -n 50`
2. Check virtual environment: `ls -la venv/`
3. Check serial port: `ls /dev/tty*`
4. Check permissions: `ls -l /dev/ttyUSB0`
5. Restart service: `sudo systemctl restart atos-tracker`

### Browser Won't Open
1. Check desktop environment: `ps aux | grep -E "(xfce|gnome|kde|lxde|mate)"`
2. Check Chromium installation: `which chromium-browser`
3. Set display manually: `export DISPLAY=:0`
4. Test browser: `chromium-browser http://localhost:5000/display`

### No Network Access
1. Check firewall: `sudo ufw status`
2. Check service: `sudo systemctl status atos-tracker`
3. Check port: `sudo netstat -tlnp | grep 5000`
4. Restart network: `sudo systemctl restart networking`

### No Serial Data
1. Check USB connection: `lsusb`
2. Check serial port: `ls /dev/tty*`
3. Test manually: `minicom -D /dev/ttyUSB0 -b 115200`
4. Check device power and connections 