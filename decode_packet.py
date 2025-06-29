import struct
import ctypes
import sys

HEX = "7e7e1828400037d45f53d3aba3bdaa02ff03f03fdd0000415734007f7e7e02385a7f"

if len(sys.argv) > 1:
    HEX = sys.argv[1]

raw = bytes.fromhex(HEX)

# split packets by 0x7e7e..0x7f
packets = []
i = 0
while i < len(raw):
    if i+1 < len(raw) and raw[i] == 0x7e and raw[i+1] == 0x7e:
        try:
            end = raw.index(0x7f, i+2)
        except ValueError:
            break
        packets.append(raw[i+2:end])
        i = end + 1
    else:
        i += 1

if not packets:
    sys.exit("No packets found")

fourty = packets[0]
fiftysix = packets[1] if len(packets) > 1 else None

# first packet fields
ptype = fourty[0]
parser = fourty[1]
body = fourty[2:]

pdop = (body[0] & 0x3F) * (1.0/3.0) + 1.0

# tag id
tag_id = ((body[0] & 0xFC) >> 6) | (body[1] << 2)

UNKNOWN_COORD = 9999999.0

lat_int = struct.unpack('<i', body[2:6])[0]
lon_int = struct.unpack('<i', body[6:10])[0]

# bit 30 of latitude encodes whether the GPS fix is "fresh"
is_fresh = ((lat_int >> 30) & 1) == 1

latitude = lat_int / 1e7
longitude = lon_int / 1e7

if not is_fresh:
    # The APK replaces invalid coordinates with 9999999.0
    latitude = UNKNOWN_COORD
    longitude = UNKNOWN_COORD

altitude = struct.unpack('<H', body[10:12])[0] - 100

# bytes 12-15 for velocity
b12, b13, b14, b15 = body[12:16]
val1 = ((b15 & 0xff) << 24) | ((b14 & 0xff) << 16)
vel_e_raw = ((b14 & 0xff) << 8) | (b13 & 0xff)
vel_n_raw = ((b13 & 0xff) << 8) | (b12 & 0xff)

vel_n = ctypes.c_int16(vel_n_raw).value & 0x3FF
vel_e = (ctypes.c_int16(vel_e_raw).value >> 2) & 0x3FF
vel_d = (val1 >> 20)
if (val1 >> 29) & 1:
    vel_d = ((vel_d & 0x1FF) | -0x200)
if (vel_n >> 9) & 1:
    vel_n = ((vel_n & 0x1FF) | -0x200)
if (vel_e >> 9) & 1:
    vel_e = ((vel_e & 0x1FF) | -0x200)

battery_voltage = body[16] * 0.01 + 1.8
temperature = body[17]
status = body[18]
wire_status = status & 0x3
object_status = (status & 0x4) >> 2
emergency = (status & 0x8) >> 3
unused = (status & 0xF0) >> 4

print("FOURTY packet:")
print("  Packet type:", hex(ptype))
print("  Parser:", hex(parser))
print("  PDOP:", pdop)
print("  Tag ID:", tag_id)
print("  Fresh:", is_fresh)
print("  Lat:", latitude)
print("  Lon:", longitude)
print("  Altitude:", altitude)
print("  Battery Voltage:", round(battery_voltage,2))
print("  Temperature:", temperature)
print("  Vel N/E/D:", vel_n, vel_e, vel_d)
print("  Wire:", wire_status, "Object:", object_status, "Emerg:", emergency, "Unused:", unused)

if fiftysix:
    batt = fiftysix[2] if len(fiftysix) >=3 else None
    if batt is not None:
        print("FIFTYSIX packet battery percent:", batt)
