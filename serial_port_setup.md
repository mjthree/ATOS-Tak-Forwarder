# Serial Port Configuration for Raspberry Pi

## Finding Your Serial Port

When you connect your ATOS receiver to the Raspberry Pi via USB, you need to identify the correct serial port.

### 1. List Available Serial Ports

```bash
ls /dev/tty*
```

Common ports you might see:
- `/dev/ttyUSB0` - USB-to-Serial adapter
- `/dev/ttyACM0` - USB CDC device
- `/dev/ttyAMA0` - Built-in UART (usually disabled)

### 2. Check USB Devices

```bash
lsusb
```

This will show all connected USB devices. Look for your serial adapter.

### 3. Monitor Port Changes

Connect your device and run:
```bash
dmesg | tail
```

This will show kernel messages when the device is connected.

## Configuring the Application

### 1. Edit the Main File

Open `marshall_tak.py` and find the serial port configuration:

```python
# Change this line from:
ser = serial.Serial('COM4', 115200, timeout=1)

# To something like:
ser = serial.Serial('/dev/ttyUSB0', 115200, timeout=1)
```

### 2. Common Port Names

| Device Type | Port Name |
|-------------|-----------|
| USB-to-Serial (FTDI) | `/dev/ttyUSB0` |
| USB-to-Serial (Prolific) | `/dev/ttyUSB0` |
| USB CDC | `/dev/ttyACM0` |
| Built-in UART | `/dev/ttyAMA0` |

## Setting Permissions

### 1. Add User to Dialout Group

```bash
sudo usermod -a -G dialout pi
```

### 2. Logout and Login

You need to logout and login again for the group changes to take effect.

### 3. Alternative: Set Permissions Directly

```bash
sudo chmod 666 /dev/ttyUSB0
```

**Note:** This permission will reset after reboot.

## Testing the Connection

### 1. Test with Minicom

```bash
sudo apt install minicom
minicom -D /dev/ttyUSB0 -b 115200
```

### 2. Test with Screen

```bash
sudo apt install screen
screen /dev/ttyUSB0 115200
```

Exit screen with: `Ctrl+A` then `K`

## Troubleshooting

### Port Not Found
- Check if device is connected: `lsusb`
- Check if driver is loaded: `dmesg | grep tty`
- Try different port names

### Permission Denied
- Ensure user is in dialout group
- Check permissions: `ls -l /dev/ttyUSB0`
- Try running with sudo (temporary fix)

### No Data Received
- Check baud rate (should be 115200)
- Check cable connections
- Verify device is powered on
- Check if device is sending data

### Multiple USB Devices
If you have multiple USB devices, the port number might change:
- `/dev/ttyUSB0` becomes `/dev/ttyUSB1`
- Use `udev` rules for consistent naming (advanced)

## Automatic Port Detection (Advanced)

You can modify the code to automatically detect the correct port:

```python
import glob
import serial

def find_serial_port():
    """Find the first available USB serial port"""
    ports = glob.glob('/dev/ttyUSB*') + glob.glob('/dev/ttyACM*')
    if ports:
        return ports[0]
    return None

# Usage:
port = find_serial_port()
if port:
    ser = serial.Serial(port, 115200, timeout=1)
else:
    print("No serial port found!")
``` 