#!/usr/bin/env python3
"""
CSV to ATOS Simulation Data Converter
Converts CSV flight data into simulated ATOS tag data for testing and demonstration.

Usage:
    python3 csv_to_sim_data.py [csv_file] [--start-time 4:45] [--offset-meters 100]

Features:
- Converts CSV timestamps to start from today at specified time (default 4:45 AM)
- Creates two simulated tags (Tag 1 and Tag 2) with configurable offset
- Inserts data into ATOS SQLite database as if it's real-time data
- Maintains realistic flight patterns and timing
"""

import csv
import sys
import os
import argparse
from datetime import datetime, timedelta, time
import sqlite3
import math

# Import the ATOS database functions
import atos_sqlite

def parse_arguments():
    """Parse command line arguments"""
    parser = argparse.ArgumentParser(description='Convert CSV flight data to ATOS simulation data')
    parser.add_argument('csv_file', nargs='?', default='PTTF_2025-05-02T15-03-11Z.csv',
                       help='CSV file to convert (default: PTTF_2025-05-02T15-03-11Z.csv)')
    parser.add_argument('--start-time', default='4:45', 
                       help='Start time today (format: HH:MM, default: 4:45)')
    parser.add_argument('--offset-meters', type=int, default=100,
                       help='Offset distance between tags in meters (default: 100)')
    parser.add_argument('--dry-run', action='store_true',
                       help='Show what would be inserted without actually inserting')
    return parser.parse_args()

def convert_unix_to_datetime(unix_ms):
    """Convert Unix timestamp (milliseconds) to datetime"""
    return datetime.fromtimestamp(unix_ms / 1000.0)

def calculate_offset_position(lat, lon, offset_meters, bearing_deg):
    """Calculate offset position given distance and bearing"""
    # Convert bearing to radians
    bearing_rad = math.radians(bearing_deg)
    
    # Earth's radius in meters
    earth_radius = 6371000
    
    # Calculate offset in lat/lon
    lat_offset = (offset_meters * math.cos(bearing_rad)) / earth_radius
    lon_offset = (offset_meters * math.sin(bearing_rad)) / (earth_radius * math.cos(math.radians(lat)))
    
    # Convert to degrees
    lat_offset_deg = math.degrees(lat_offset)
    lon_offset_deg = math.degrees(lon_offset)
    
    return lat + lat_offset_deg, lon + lon_offset_deg

def meters_to_feet(meters):
    """Convert meters to feet"""
    return meters * 3.28084

def main():
    args = parse_arguments()
    
    # Check if CSV file exists
    if not os.path.exists(args.csv_file):
        print(f"❌ Error: CSV file '{args.csv_file}' not found")
        sys.exit(1)
    
    # Parse start time
    try:
        start_hour, start_minute = map(int, args.start_time.split(':'))
        start_time = time(start_hour, start_minute)
    except ValueError:
        print(f"❌ Error: Invalid start time format '{args.start_time}'. Use HH:MM format.")
        sys.exit(1)
    
    print(f"🔄 Converting CSV data to ATOS simulation...")
    print(f"   CSV File: {args.csv_file}")
    print(f"   Start Time: {args.start_time}")
    print(f"   Tag Offset: {args.offset_meters} meters")
    print(f"   Mode: {'DRY RUN' if args.dry_run else 'LIVE INSERT'}")
    print()
    
    # Read CSV data
    csv_data = []
    try:
        with open(args.csv_file, 'r') as f:
            reader = csv.DictReader(f)
            for row in reader:
                csv_data.append(row)
    except Exception as e:
        print(f"❌ Error reading CSV file: {e}")
        sys.exit(1)
    
    if not csv_data:
        print("❌ Error: No data found in CSV file")
        sys.exit(1)
    
    print(f"📊 Loaded {len(csv_data)} data points from CSV")
    
    # Calculate time offset
    first_timestamp = convert_unix_to_datetime(int(csv_data[0][' TimeStamp (unix epoch)']))
    today = datetime.now().date()
    target_start = datetime.combine(today, start_time)
    
    # Calculate time difference to shift all timestamps
    time_offset = target_start - first_timestamp
    
    print(f"   Original start: {first_timestamp}")
    print(f"   Target start: {target_start}")
    print(f"   Time offset: {time_offset}")
    print()
    
    # Process and insert data
    inserted_count = 0
    skipped_count = 0
    
    for i, row in enumerate(csv_data):
        try:
            # Parse original timestamp
            original_timestamp = convert_unix_to_datetime(int(row[' TimeStamp (unix epoch)']))
            
            # Calculate new timestamp
            new_timestamp = original_timestamp + time_offset
            
            # Parse coordinates and altitude
            lat = float(row[' Latitude (dec deg)'])
            lon = float(row[' Longitude (dec deg)'])
            altitude_m = float(row[' HAE Altitude (m)'])
            speed_ms = float(row[' Speed (m/s)'])
            bearing = float(row[' Bearing'])
            
            # Convert altitude to feet
            altitude_ft = meters_to_feet(altitude_m)
            
            # Calculate offset position for Tag 2
            lat2, lon2 = calculate_offset_position(lat, lon, args.offset_meters, bearing)
            
            # Create data for both tags
            tag1_data = {
                'timestamp': new_timestamp.isoformat(timespec='milliseconds') + 'Z',
                'tag_id': 1,
                'latitude': round(lat, 6),
                'longitude': round(lon, 6),
                'altitude_ft': round(altitude_ft, 1),
                'battery_voltage': 3.8,  # Simulated battery voltage
                'temperature': 25,  # Simulated temperature
                'pdop': 2.0,  # Simulated PDOP
                'wire_status': '0',
                'object_status': '0',
                'emergency': 0,
                'is_fresh': 1,
                'bad_gps': 0,
                'tak_ip': '192.168.1.100',
                'tak_port': 8686,
                'cot_xml': f'<simulated_cot>Tag 1 at {new_timestamp}</simulated_cot>',
                'event_type': 'simulated_data'
            }
            
            tag2_data = {
                'timestamp': new_timestamp.isoformat(timespec='milliseconds') + 'Z',
                'tag_id': 2,
                'latitude': round(lat2, 6),
                'longitude': round(lon2, 6),
                'altitude_ft': round(altitude_ft, 1),
                'battery_voltage': 3.7,  # Slightly different for variety
                'temperature': 26,
                'pdop': 2.1,
                'wire_status': '0',
                'object_status': '0',
                'emergency': 0,
                'is_fresh': 1,
                'bad_gps': 0,
                'tak_ip': '192.168.1.100',
                'tak_port': 8686,
                'cot_xml': f'<simulated_cot>Tag 2 at {new_timestamp}</simulated_cot>',
                'event_type': 'simulated_data'
            }
            
            if args.dry_run:
                print(f"   [{i+1:3d}] {new_timestamp.strftime('%H:%M:%S')} - Tag 1: ({lat:.6f}, {lon:.6f}) {altitude_ft:.1f}ft")
                print(f"        Tag 2: ({lat2:.6f}, {lon2:.6f}) {altitude_ft:.1f}ft (offset: {args.offset_meters}m)")
            else:
                # Insert into database
                try:
                    atos_sqlite.insert_tag_event(**tag1_data)
                    atos_sqlite.insert_tag_event(**tag2_data)
                    inserted_count += 2
                    
                    if (i + 1) % 50 == 0:
                        print(f"   ✅ Processed {i+1}/{len(csv_data)} data points...")
                        
                except Exception as e:
                    print(f"   ⚠️  Error inserting data point {i+1}: {e}")
                    skipped_count += 2
                    
        except Exception as e:
            print(f"   ⚠️  Error processing data point {i+1}: {e}")
            skipped_count += 2
            continue
    
    # Summary
    print()
    if args.dry_run:
        print(f"✅ DRY RUN COMPLETE")
        print(f"   Would insert {len(csv_data) * 2} data points")
        print(f"   Tag 1: {len(csv_data)} points")
        print(f"   Tag 2: {len(csv_data)} points (offset by {args.offset_meters}m)")
    else:
        print(f"✅ SIMULATION DATA INSERTED")
        print(f"   Successfully inserted: {inserted_count} data points")
        print(f"   Skipped: {skipped_count} data points")
        print(f"   Tag 1: {inserted_count//2} points")
        print(f"   Tag 2: {inserted_count//2} points (offset by {args.offset_meters}m)")
    
    print()
    print("🎯 Next steps:")
    print("   1. Restart your ATOS service if it's running")
    print("   2. Check the database interface to see the simulated data")
    print("   3. The data will appear as if two tags are flying the same path")
    print("   4. Tag 2 will be offset by the specified distance from Tag 1")

if __name__ == "__main__":
    main() 