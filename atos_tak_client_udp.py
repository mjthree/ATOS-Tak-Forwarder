import asyncio
import json
import os
import socket
from datetime import datetime, timedelta, timezone
from typing import Dict, Any, Optional

COT_HOST = '192.168.200.11'
COT_PORT = 8087

class AtosTAKClient:
    def __init__(self):
        self.json_file = "latest_tag_data.json"
        self.last_data = {}
        self.last_sent = {}
        self.update_interval = 5  # seconds
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

    def load_tag_data(self) -> Optional[Dict[str, Any]]:
        try:
            if not os.path.exists(self.json_file):
                print(f"⚠️  JSON file {self.json_file} not found")
                return None
            with open(self.json_file, 'r') as f:
                data = json.load(f)
            if not data or 'tags' not in data:
                print("⚠️  No valid tag data in JSON file")
                return None
            return data
        except Exception as e:
            print(f"❌ Error loading JSON data: {e}")
            return None

    def create_cot_message(self, tag_id: str, tag_data: Dict[str, Any]) -> Optional[bytes]:
        try:
            # Extract dynamic fields from tag_data
            lat = f"{tag_data.get('latitude', 0):.7f}"  # 7 decimal places
            lon = f"{tag_data.get('longitude', 0):.7f}"  # 7 decimal places
            hae = f"{tag_data.get('altitude', 0):.3f}"   # 3 decimal places
            battery = f"{tag_data.get('battery_voltage', 0):.2f}"
            temp = f"{tag_data.get('temperature', 0):.0f}"
            # Use the same time for all fields (simulate real device)
            now = datetime.now(timezone.utc)
            time_str = now.strftime('%Y-%m-%dT%H:%M:%S.%f')[:-3] + 'Z'
            time_short = now.strftime('%H:%M:%S.%f')[:-3]
            cot_xml = f'''<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<event version="2.0" uid="atos-{tag_id}-60eabd39-32ed-436f-9a17-4a8add4d24fc" type="a-f-G-U-C-I" time="{time_str}" start="{time_str}" stale="{(now.replace(microsecond=0) + timedelta(minutes=5)).strftime('%Y-%m-%dT%H:%M:%S.000Z')}" how="m-g" access="Undefined"><point lat="{lat}" lon="{lon}" hae="{hae}" ce="1.3" le="2.0"/><detail><track vspeed="0.0" course="270.0" slope="0.0" speed="0.2777777777777778"/><link uid="ANDROID-3e844b3d264f49fb" type="a-f-G-U-C-I" parent_callsign="Atos Tablet" relation="p-p"/><contact callsign="PAX {tag_id}"/><__atos color="White" tag_type="Personnel" manifest="Course " alarm="0" temp_c="{temp}" voltage="{battery}"><attributes PAX_Type="" Team_Frequency="" Special_Equipment="" Frequency="" Remark=""/></__atos><archive/></detail></event>'''
            return cot_xml.encode('utf-8')
        except Exception as e:
            print(f"❌ Error creating COT message for tag {tag_id}: {e}")
            return None

    async def run(self):
        print("🚀 ATOS TAK Client (Direct UDP) Starting...")
        print(f"📡 Target: {COT_HOST}:{COT_PORT}")
        print(f"📊 Update interval: {self.update_interval} seconds")
        print(f"📁 Data source: {self.json_file}")
        print("=" * 50)
        while True:
            try:
                data = self.load_tag_data()
                if data and 'tags' in data:
                    tags = data['tags']
                    stats = data.get('stats', {})
                    print(f"📡 Processing {len(tags)} tags (Total packets: {stats.get('total_packets', 0)})")
                    for tag_id, tag_data in tags.items():
                        # Only send if tag is not stale
                        if tag_data.get('stale', False):
                            continue
                        cot_message = self.create_cot_message(tag_id, tag_data)
                        if cot_message:
                            print(f"[DEBUG] Sending to {COT_HOST}:{COT_PORT} for Tag {tag_id}:")
                            print(cot_message.decode('utf-8'))
                            self.sock.sendto(cot_message, (COT_HOST, COT_PORT))
                            self.last_sent[tag_id] = datetime.utcnow()
                            print(f"✅ Sent COT for Tag {tag_id}: {tag_data.get('latitude', 0):.6f}°, {tag_data.get('longitude', 0):.6f}°, {tag_data.get('battery_voltage', 0)}V")
                        self.last_data[tag_id] = tag_data
                else:
                    print("⏳ Waiting for valid tag data...")
                await asyncio.sleep(self.update_interval)
            except Exception as e:
                print(f"❌ Error in main loop: {e}")
                await asyncio.sleep(5)

if __name__ == "__main__":
    asyncio.run(AtosTAKClient().run()) 