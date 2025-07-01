# Raspberry Pi Deployment Checklist

## Pre-Installation

- [ ] Raspberry Pi OS (Raspbian) installed and updated
- [ ] Python 3.7+ installed (`python3 --version`)
- [ ] pip3 installed (`pip3 --version`)
- [ ] ATOS receiver connected via USB
- [ ] Network connection established
- [ ] SSH access enabled (if remote setup)

## Installation

- [ ] Project files copied to `/home/pi/atos-newest/`
- [ ] Scripts made executable:
  ```bash
  chmod +x install_service.sh
  chmod +x setup_firewall.sh
  ```
- [ ] Service installed: `sudo ./install_service.sh`
- [ ] Firewall configured: `sudo ./setup_firewall.sh`

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
- [ ] Logs checked for errors: `sudo journalctl -u atos-tracker -n 20`

## Network Configuration

- [ ] Raspberry Pi IP address noted: `hostname -I`
- [ ] Firewall status verified: `sudo ufw status`
- [ ] Port 5000 allowed: `sudo ufw allow 5000`
- [ ] Network connectivity tested from other devices

## Testing

- [ ] Dashboard accessible: `http://[RASPBERRY_PI_IP]:5000/display`
- [ ] Control interface accessible: `http://[RASPBERRY_PI_IP]:5000/`
- [ ] API endpoint responding: `http://[RASPBERRY_PI_IP]:5000/api/tags`
- [ ] Serial data being received (check logs)
- [ ] Tags appearing in dashboard with correct colors

## Troubleshooting Commands

### Service Issues
```bash
# Check service status
sudo systemctl status atos-tracker

# View recent logs
sudo journalctl -u atos-tracker -n 50

# Restart service
sudo systemctl restart atos-tracker

# Check if service is enabled
sudo systemctl is-enabled atos-tracker
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
```

## Final Verification

- [ ] Service starts automatically on boot
- [ ] Dashboard displays correctly on target screen
- [ ] Serial data flows continuously
- [ ] Logs are being created in `comprehensive_logs/`
- [ ] Network access works from intended devices
- [ ] No error messages in service logs

## Maintenance

- [ ] Regular log rotation configured (optional)
- [ ] Backup strategy for configuration files
- [ ] Monitoring setup for service health
- [ ] Update strategy for application updates

## Emergency Procedures

### Service Won't Start
1. Check logs: `sudo journalctl -u atos-tracker -n 50`
2. Check serial port: `ls /dev/tty*`
3. Check permissions: `ls -l /dev/ttyUSB0`
4. Restart service: `sudo systemctl restart atos-tracker`

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