#!/usr/bin/env python3
import struct
import datetime
import sys
import re

def read_pcap_header(f):
    """Read pcap file header"""
    magic = f.read(4)
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
    print(f"Opening file: {filename}")
    with open(filename, 'rb') as f:
        link_type = read_pcap_header(f)
        print(f"Link type: {link_type}")
        print(f"Analyzing packets for XML payloads...")
        print("-" * 80)
        packet_count = 0
        udp_count = 0
        cot_count = 0
        while True:
            header = read_packet_header(f)
            if header is None:
                break
            ts_sec, ts_usec, incl_len, orig_len = header
            packet_count += 1
            packet_data = f.read(incl_len)
            if len(packet_data) < incl_len:
                break

            # Ethernet (link type 1)
            if link_type == 1 and len(packet_data) >= 14+20+8:
                eth_type = struct.unpack('!H', packet_data[12:14])[0]
                if eth_type == 0x0800:  # IPv4
                    ip_header = packet_data[14:34]
                    version_ihl = ip_header[0]
                    ihl = (version_ihl & 0x0F) * 4
                    protocol = ip_header[9]
                    if protocol == 17:  # UDP
                        udp_count += 1
                        src_ip = '.'.join(str(x) for x in ip_header[12:16])
                        dst_ip = '.'.join(str(x) for x in ip_header[16:20])
                        udp_start = 14 + ihl
                        udp_header = packet_data[udp_start:udp_start+8]
                        src_port, dst_port, udp_len, udp_checksum = struct.unpack('!HHHH', udp_header)
                        udp_payload = packet_data[udp_start+8:]
                        try:
                            payload_str = udp_payload.decode('utf-8', errors='ignore')
                            if '<event' in payload_str and 'track_type' in payload_str:
                                cot_count += 1
                                print(f"--- COT XML in UDP packet {udp_count} (src_port={src_port}, dst_port={dst_port}) ---")
                                print(payload_str[:1000])
                                m = re.search(r'track_type=\"([^\"]+)\"', payload_str)
                                if m:
                                    print(f"track_type: {m.group(1)}")
                                print()
                        except Exception:
                            continue

            # Linux cooked (link type 113)
            elif link_type == 113 and len(packet_data) >= 16+20+8:
                proto_type = struct.unpack('!H', packet_data[14:16])[0]
                if proto_type == 0x0800:
                    ip_header = packet_data[16:36]
                    version_ihl = ip_header[0]
                    ihl = (version_ihl & 0x0F) * 4
                    protocol = ip_header[9]
                    if protocol == 17:
                        udp_count += 1
                        udp_start = 16 + ihl
                        udp_header = packet_data[udp_start:udp_start+8]
                        src_port, dst_port, udp_len, udp_checksum = struct.unpack('!HHHH', udp_header)
                        udp_payload = packet_data[udp_start+8:]
                        try:
                            payload_str = udp_payload.decode('utf-8', errors='ignore')
                            if '<event' in payload_str and 'track_type' in payload_str:
                                cot_count += 1
                                print(f"--- COT XML in UDP packet {udp_count} (src_port={src_port}, dst_port={dst_port}) ---")
                                print(payload_str[:1000])
                                m = re.search(r'track_type=\"([^\"]+)\"', payload_str)
                                if m:
                                    print(f"track_type: {m.group(1)}")
                                print()
                        except Exception:
                            continue

        print("-" * 80)
        print(f"Total packets: {packet_count}")
        print(f"UDP packets: {udp_count}")
        print(f"COT XML packets with track_type: {cot_count}")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python analyze_pcap.py <pcapfile>")
        sys.exit(1)
    analyze_pcap(sys.argv[1])