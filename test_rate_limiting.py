#!/usr/bin/env python3
"""
Test script to verify rate limiting mechanism
"""

import time
import threading
from collections import defaultdict

# Simulate the rate limiting mechanism
TAG_RATE_LIMIT = 1.0  # 1 second between updates per tag
tag_last_processed = {}

def process_packet(tag_id, packet_data):
    """Simulate packet processing with rate limiting"""
    current_time = time.time()
    
    # Check rate limiting per tag
    last_processed = tag_last_processed.get(tag_id, 0)
    if current_time - last_processed < TAG_RATE_LIMIT:
        print(f"⏱️ Rate limiting tag {tag_id} - skipping packet (last update was {current_time - last_processed:.2f}s ago)")
        return False
    
    # Update last processed time for this tag
    tag_last_processed[tag_id] = current_time
    print(f"✅ Processing tag {tag_id} at {current_time:.2f}")
    return True

def simulate_rapid_packets():
    """Simulate rapid packet transmission from multiple tags"""
    print("🧪 Testing rate limiting with rapid packets...")
    
    # Simulate 10 packets from tag 1 in 0.1 second intervals
    for i in range(10):
        process_packet(1, f"packet_{i}")
        time.sleep(0.1)
    
    # Simulate 5 packets from tag 2 in 0.2 second intervals
    for i in range(5):
        process_packet(2, f"packet_{i}")
        time.sleep(0.2)
    
    # Wait and try again
    print("\n⏳ Waiting 1.5 seconds...")
    time.sleep(1.5)
    
    # Try processing again - should work now
    print("\n🔄 Trying again after wait...")
    for i in range(3):
        process_packet(1, f"packet_{i}")
        process_packet(2, f"packet_{i}")
        time.sleep(0.1)

if __name__ == "__main__":
    simulate_rapid_packets()
    print(f"\n📊 Final stats:")
    print(f"Active tags: {len(tag_last_processed)}")
    for tag_id, last_time in tag_last_processed.items():
        print(f"Tag {tag_id}: last processed at {last_time:.2f}") 