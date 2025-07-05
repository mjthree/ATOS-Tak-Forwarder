#!/usr/bin/env python3
"""
Test script for timezone conversion functionality
"""

from datetime import datetime, timezone
import pytz

def convert_utc_to_mst(utc_timestamp_str):
    """
    Convert UTC timestamp string to MST (America/Phoenix) timestamp string.
    
    Args:
        utc_timestamp_str (str): UTC timestamp in ISO format (e.g., '2024-01-01T12:00:00Z')
        
    Returns:
        str: MST timestamp in ISO format (e.g., '2024-01-01T05:00:00-07:00')
    """
    try:
        # Parse the UTC timestamp
        if utc_timestamp_str.endswith('Z'):
            utc_timestamp_str = utc_timestamp_str[:-1] + '+00:00'
        
        utc_dt = datetime.fromisoformat(utc_timestamp_str)
        
        # Convert to MST (America/Phoenix)
        mst_tz = pytz.timezone('America/Phoenix')
        mst_dt = utc_dt.astimezone(mst_tz)
        
        # Return in ISO format with timezone offset
        return mst_dt.isoformat()
    except Exception as e:
        print(f"Error converting UTC to MST: {e}")
        # Return original timestamp if conversion fails
        return utc_timestamp_str

def test_timezone_conversion():
    """Test the timezone conversion function with various inputs"""
    
    test_cases = [
        "2024-01-01T12:00:00Z",
        "2024-07-01T12:00:00Z",  # Summer time (MDT)
        "2024-01-01T12:00:00.123Z",
        "2024-01-01 12:00:00",
        "2024-01-01T12:00:00+00:00"
    ]
    
    print("Testing timezone conversion from UTC to MST (America/Phoenix):")
    print("=" * 60)
    
    for test_case in test_cases:
        result = convert_utc_to_mst(test_case)
        print(f"Input:  {test_case}")
        print(f"Output: {result}")
        print("-" * 40)
    
    # Test with current time
    now_utc = datetime.now(timezone.utc)
    now_utc_str = now_utc.isoformat()
    now_mst = convert_utc_to_mst(now_utc_str)
    print(f"Current UTC: {now_utc_str}")
    print(f"Current MST: {now_mst}")

if __name__ == "__main__":
    test_timezone_conversion() 