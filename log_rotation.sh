#!/bin/bash

# ATOS Tracker Log Rotation Script
# This script manages log file storage to prevent disk space issues

set -e

echo "🔄 ATOS Tracker Log Rotation"
echo "============================"

# Configuration
LOGS_DIR="comprehensive_logs"
DAYS_TO_KEEP=30
DAYS_TO_COMPRESS=7
MAX_LOG_SIZE_MB=100

# Check if logs directory exists
if [ ! -d "$LOGS_DIR" ]; then
    echo "❌ Logs directory not found: $LOGS_DIR"
    exit 1
fi

# Get current disk usage
current_usage=$(du -sh "$LOGS_DIR" | cut -f1)
echo "📊 Current logs directory size: $current_usage"

# Function to compress files
compress_old_logs() {
    echo "🗜️  Compressing logs older than $DAYS_TO_COMPRESS days..."
    
    # Compress JSONL files
    find "$LOGS_DIR" -name "*.jsonl" -mtime +$DAYS_TO_COMPRESS -not -name "*.gz" -exec gzip {} \;
    
    # Compress CSV files
    find "$LOGS_DIR" -name "*.csv" -mtime +$DAYS_TO_COMPRESS -not -name "*.gz" -exec gzip {} \;
    
    compressed_count=$(find "$LOGS_DIR" -name "*.gz" | wc -l)
    echo "✅ Compressed $compressed_count files"
}

# Function to delete old files
delete_old_logs() {
    echo "🗑️  Deleting logs older than $DAYS_TO_KEEP days..."
    
    # Count files before deletion
    files_before=$(find "$LOGS_DIR" -type f | wc -l)
    
    # Delete old JSONL files (including compressed)
    find "$LOGS_DIR" -name "*.jsonl*" -mtime +$DAYS_TO_KEEP -delete
    
    # Delete old CSV files (including compressed)
    find "$LOGS_DIR" -name "*.csv*" -mtime +$DAYS_TO_KEEP -delete
    
    # Delete old analysis files
    find "$LOGS_DIR" -name "voltage_analysis_*.json" -mtime +$DAYS_TO_KEEP -delete
    
    # Delete old summary files
    find "$LOGS_DIR" -name "logging_summary_*.txt" -mtime +$DAYS_TO_KEEP -delete
    
    # Count files after deletion
    files_after=$(find "$LOGS_DIR" -type f | wc -l)
    deleted_count=$((files_before - files_after))
    
    echo "✅ Deleted $deleted_count old files"
}

# Function to check for oversized files
check_oversized_files() {
    echo "📏 Checking for oversized files (>${MAX_LOG_SIZE_MB}MB)..."
    
    oversized_files=$(find "$LOGS_DIR" -type f -size +${MAX_LOG_SIZE_MB}M -not -name "*.gz")
    
    if [ -n "$oversized_files" ]; then
        echo "⚠️  Found oversized files:"
        echo "$oversized_files" | while read -r file; do
            size=$(du -h "$file" | cut -f1)
            echo "   $file ($size)"
        done
        
        echo ""
        echo "💡 Consider compressing these files manually or adjusting MAX_LOG_SIZE_MB"
    else
        echo "✅ No oversized files found"
    fi
}

# Function to show storage statistics
show_stats() {
    echo ""
    echo "📈 Storage Statistics:"
    echo "====================="
    
    # Total file count
    total_files=$(find "$LOGS_DIR" -type f | wc -l)
    echo "Total files: $total_files"
    
    # File types breakdown
    jsonl_count=$(find "$LOGS_DIR" -name "*.jsonl*" | wc -l)
    csv_count=$(find "$LOGS_DIR" -name "*.csv*" | wc -l)
    json_count=$(find "$LOGS_DIR" -name "*.json" | wc -l)
    txt_count=$(find "$LOGS_DIR" -name "*.txt" | wc -l)
    
    echo "JSONL files: $jsonl_count"
    echo "CSV files: $csv_count"
    echo "JSON files: $json_count"
    echo "TXT files: $txt_count"
    
    # Compressed vs uncompressed
    compressed_count=$(find "$LOGS_DIR" -name "*.gz" | wc -l)
    uncompressed_count=$((total_files - compressed_count))
    
    echo "Compressed files: $compressed_count"
    echo "Uncompressed files: $uncompressed_count"
    
    # Size breakdown
    echo ""
    echo "📊 Size Breakdown:"
    du -sh "$LOGS_DIR"/* | sort -hr | head -10
}

# Main execution
echo "🕐 Starting log rotation at $(date)"

# Compress old logs
compress_old_logs

# Delete very old logs
delete_old_logs

# Check for oversized files
check_oversized_files

# Show final statistics
show_stats

# Get final disk usage
final_usage=$(du -sh "$LOGS_DIR" | cut -f1)
echo ""
echo "📊 Final logs directory size: $final_usage"
echo "✅ Log rotation completed at $(date)"

# Optional: Restart the service if it's running
if systemctl is-active --quiet atos-tracker; then
    echo ""
    echo "🔄 Restarting atos-tracker service..."
    sudo systemctl restart atos-tracker
    echo "✅ Service restarted"
fi 