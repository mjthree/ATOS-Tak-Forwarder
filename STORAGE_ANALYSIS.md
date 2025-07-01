# Storage Analysis: ATOS Tracker Logging

## Current Data Analysis

Based on the existing log files, here's the storage growth analysis:

### File Sizes Observed

**Largest Log Files:**
- `all_tag_updates_20250701_104720.jsonl`: 28.54 MB
- `all_tag_updates_20250701_091132.jsonl`: 14.53 MB
- `all_tag_updates_20250630_054913.jsonl`: 8.54 MB
- `all_tag_updates_20250701_080333.jsonl`: 7.99 MB
- `all_tag_updates_20250701_085619.jsonl`: 6.81 MB

**Voltage Tracking Files:**
- `voltage_tracking_20250701_080333.csv`: 1.01 MB
- `voltage_tracking_20250701_085619.csv`: 0.87 MB

### Data Structure Analysis

**JSONL Log Entry Size:**
Each log entry contains:
```json
{
  "full_timestamp": "2025-07-01T10:47:21.306263",
  "tag_id": 13,
  "battery_voltage": 3.79,
  "latitude": 32.504652,
  "longitude": -111.334105,
  "altitude_ft": 1873.4,
  "bad_gps": false,
  "is_fresh": true,
  "temperature": 0,
  "pdop": 1.0,
  "wire_status": 0,
  "object_status": 0,
  "emergency": 0
}
```

**Average entry size:** ~200 bytes per JSON line

**CSV Voltage Entry:**
```
timestamp,tag_id,voltage
2025-07-01T10:47:21.306263,13,3.79
```
**Average entry size:** ~50 bytes per CSV line

## Growth Rate Calculations

### Current Activity Level
From the file timestamps, we can see logs were created throughout the day on 2025-07-01, indicating continuous operation.

### Per-Device Data Generation
Assuming each device transmits every few seconds:

**Conservative Estimate (1 update per 5 seconds):**
- JSONL entries: 200 bytes × 12 updates/minute = 2,400 bytes/minute/device
- CSV entries: 50 bytes × 12 updates/minute = 600 bytes/minute/device
- **Total per device:** 3,000 bytes/minute = 180 KB/hour/device

**Moderate Estimate (1 update per 2 seconds):**
- JSONL entries: 200 bytes × 30 updates/minute = 6,000 bytes/minute/device
- CSV entries: 50 bytes × 30 updates/minute = 1,500 bytes/minute/device
- **Total per device:** 7,500 bytes/minute = 450 KB/hour/device

**High Activity Estimate (1 update per second):**
- JSONL entries: 200 bytes × 60 updates/minute = 12,000 bytes/minute/device
- CSV entries: 50 bytes × 60 updates/minute = 3,000 bytes/minute/device
- **Total per device:** 15,000 bytes/minute = 900 KB/hour/device

## 100 Devices - 64GB Calculation

### Conservative Estimate (1 update per 5 seconds)
- **Per device:** 180 KB/hour
- **100 devices:** 18 MB/hour
- **Daily growth:** 432 MB/day
- **Time to 64GB:** 64,000 MB ÷ 432 MB/day = **148 days** (~5 months)

### Moderate Estimate (1 update per 2 seconds)
- **Per device:** 450 KB/hour
- **100 devices:** 45 MB/hour
- **Daily growth:** 1.08 GB/day
- **Time to 64GB:** 64 GB ÷ 1.08 GB/day = **59 days** (~2 months)

### High Activity Estimate (1 update per second)
- **Per device:** 900 KB/hour
- **100 devices:** 90 MB/hour
- **Daily growth:** 2.16 GB/day
- **Time to 64GB:** 64 GB ÷ 2.16 GB/day = **30 days** (~1 month)

## Additional Storage Considerations

### Log File Types
1. **all_tag_updates_*.jsonl** - Main log (largest)
2. **voltage_tracking_*.csv** - Voltage data
3. **tag_status_*.jsonl** - Status changes
4. **voltage_analysis_*.json** - Analysis reports
5. **logging_summary_*.txt** - Summary files

**Total overhead:** ~10-15% additional storage beyond main logs

### Real-World Factors

**Variable Transmission Rates:**
- Devices may transmit more frequently when moving
- Battery voltage affects transmission frequency
- GPS signal quality impacts data size
- Emergency situations increase logging

**Storage Efficiency:**
- JSON compression could reduce size by 60-70%
- Database storage would be more efficient than flat files
- Log rotation and archiving can manage growth

## Recommendations

### 1. Immediate Actions
- **Enable log rotation:** Keep only last 30 days of logs
- **Compress old logs:** Use gzip compression
- **Monitor growth:** Set up storage alerts

### 2. Medium-term Solutions
- **Database migration:** Move to SQLite or PostgreSQL
- **Selective logging:** Log only significant events
- **Data aggregation:** Store hourly/daily summaries

### 3. Long-term Planning
- **Cloud storage:** Move historical data to cloud
- **Data retention policy:** Define how long to keep data
- **Analytics pipeline:** Process and archive old data

## Storage Management Script

Consider implementing automatic log management:

```bash
#!/bin/bash
# Log rotation script

# Keep only last 30 days of logs
find comprehensive_logs/ -name "*.jsonl" -mtime +30 -delete
find comprehensive_logs/ -name "*.csv" -mtime +30 -delete

# Compress logs older than 7 days
find comprehensive_logs/ -name "*.jsonl" -mtime +7 -exec gzip {} \;
find comprehensive_logs/ -name "*.csv" -mtime +7 -exec gzip {} \;
```

## Conclusion

**Most Likely Scenario:** With 100 devices transmitting every 2-5 seconds, you'll reach 64GB in **1-5 months** depending on activity level.

**Recommendation:** Implement log rotation and compression immediately, and plan for database migration within 2-3 months for long-term sustainability. 