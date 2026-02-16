#!/bin/bash
# Script to monitor System Health

echo "--- System Health Report ---"
echo "Date: $(date)"

# Check CPU Usage
echo "CPU Load:"
top -bn1 | grep "Cpu(s)"

# Check RAM Usage
echo "Memory Usage:"
free -h

# Check Disk Space
echo "Disk Space:"
df -h | grep '^/dev/'
