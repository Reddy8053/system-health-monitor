#!/bin/bash

# ==============================================
# System Health Monitor Script
# Author: Deekshith Reddy
# Description: Generates a system report including
# CPU, Memory, Disk usage, and Top 5 processes.
# ==============================================

LOG_DIR="./logs"
LOG_FILE="$LOG_DIR/system_report.log"

# Create log directory if it doesn't exist
mkdir -p "$LOG_DIR"

# Timestamp
echo "======================" >> "$LOG_FILE"
echo "System Report - $(date)" >> "$LOG_FILE"
echo "======================" >> "$LOG_FILE"

# CPU Usage
echo "🔹 CPU Usage:" >> "$LOG_FILE"
top -bn1 | grep "Cpu(s)" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Memory Usage
echo "🔹 Memory Usage:" >> "$LOG_FILE"
free -h >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Disk Usage
echo "🔹 Disk Usage:" >> "$LOG_FILE"
df -h >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

# Top 5 Processes
echo "🔹 Top 5 Processes by CPU:" >> "$LOG_FILE"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6 >> "$LOG_FILE"
echo "" >> "$LOG_FILE"

echo "✅ Report generated at: $LOG_FILE"