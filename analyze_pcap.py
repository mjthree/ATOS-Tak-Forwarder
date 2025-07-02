#!/usr/bin/env python3
import struct
import datetime
import sys

def read_pcap_header(f):
    """Read pcap file header"""
    magic = f.read(4)
    print(f"Magic bytes: {magic}")
    if magic != b'\xd4\xc3\xb2\xa1':  # Little endian magic
        raise ValueError("Not a valid pcap file")
    
    version_major, version_minor, tz_offset, tz_accuracy, snapshot_length, link_type = struct.unpack('<HHIIII', f.read(20))
    return link_type

def read_packet_header(f):
    """Read packet header"""
    data = f.read(16)
    if len(data) < 16:
        return None
    
    ts_sec, ts_usec, incl_len, orig_len = struct.unpack('<IIII', data)
    return ts_sec, ts_usec, incl_len, orig_len

def analyze_pcap(filename):
    """Analyze pcap file and extract UDP packet information"""
    print(f"Opening file: {filename}")
    with open(filename, 'rb') as f:
        link_type = read_pcap_header(f)
        print(f"Link type: {link_type}")
        print(f"Analyzing packets...")
        print("-" * 80)
        
        packet_count = 0
        udp_count = 0
        first_packet_time = None
        last_packet_time = None
        
        while True:
            header = read_packet_header(f)
            if header is None:
                break
                
            ts_sec, ts_usec, incl_len, orig_len = header
            packet_count += 1
            
            # Read packet data
            packet_data = f.read(incl_len)
            if len(packet_data) < incl_len:
                break
            
            # Check if this is an IP packet (Ethernet type 0x0800)
            if link_type == 113 and len(packet_data) >= 16+20+8:  # SLL+IP+UDP
                proto_type = struct.unpack('!H', packet_data[14:16])[0]
                if proto_type == 0x0800:  # IPv4
                    ip_header = packet_data[16:36]
                    version_ihl = ip_header[0]
                    ihl = (version_ihl & 0x0F) * 4
                    protocol = ip_header[9]
                    if protocol == 17:  # UDP
                        udp_count += 1
                        src_ip = '.'.join(str(x) for x in ip_header[12:16])
                        dst_ip = '.'.join(str(x) for x in ip_header[16:20])
                        udp_start = 16 + ihl
                        udp_header = packet_data[udp_start:udp_start+8]
                        src_port, dst_port, udp_len, udp_checksum = struct.unpack('!HHHH', udp_header)
                        
                        # Convert timestamp
                        timestamp = datetime.datetime.fromtimestamp(ts_sec + ts_usec / 1000000.0)
                        
                        if udp_count <= 20:  # Show first 20 UDP packets
                            print(f"Packet {udp_count}: {timestamp} - {src_ip}:{src_port} -> {dst_ip}:{dst_port} (len: {udp_len})")
                        
                        if udp_count == 1:
                            first_packet_time = timestamp
                        elif udp_count == 20:
                            last_packet_time = timestamp
                            break
        
        print("-" * 80)
        print(f"Total packets: {packet_count}")
        print(f"UDP packets: {udp_count}")
        if first_packet_time and last_packet_time:
            time_diff = (last_packet_time - first_packet_time).total_seconds()
            print(f"Time span for first 20 UDP packets: {time_diff:.3f} seconds")
            print(f"Average interval: {time_diff/19:.3f} seconds")

if __name__ == "__main__":
    analyze_pcap("tak_udp_8686.pcap") 