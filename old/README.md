# Old Files Directory

This directory contains files from previous versions of the ATOS TAK Forwarder that are no longer in active use.

## Files Description

### Previous Versions
- **marshall_tak_high_volume.py** - High-volume version optimized for 100+ devices
- **marshall_tak.py** - Original basic version
- **install_high_volume.sh** - Installer for high-volume version
- **uninstall_high_volume.sh** - Uninstaller for high-volume version
- **HIGH_VOLUME_README.md** - Documentation for high-volume version
- **RATE_LIMITING_IMPLEMENTATION.md** - Technical documentation for rate limiting

### Analysis and Testing Files
- **analyze_pcap.py** - PCAP analysis script
- **tracktype.txt** - Track type definitions
- **tracktypeexample.pcap** - Example PCAP file
- **tcp_8686_full.pcap** - TCP capture file
- **tcp_8686_xml.log** - XML log file
- **tak_udp_8686.pcap** - UDP capture file

### Log Files
- **takserver-messaging.log** - TAK server messaging logs
- **takserver-api.log** - TAK server API logs
- **tak_forwarding_20250702_125124.log** - TAK forwarding logs
- **latest_tag_data.json** - Cached tag data

### Desktop Integration
- **ATOS-Dashboard.desktop** - Desktop shortcut
- **start_dashboard.sh** - Dashboard startup script

## Current Version

The current active version is **marshall_tak_tdma.py** which features:
- TDMA scheduling for deterministic tag transmission
- Database integration for historical analysis
- Enhanced web interface with database interface
- Improved reliability and performance

## Migration Notes

If you need to use any of these old files:
1. Copy the specific file back to the main directory
2. Update any references to match the current configuration
3. Test thoroughly before using in production

The current TDMA version is recommended for all new deployments. 