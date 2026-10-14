#!/bin/bash
echo "=============================="
echo "  SYSTEM HEALTH CHECK REPORT"
echo "=============================="
echo ""

echo "Hostname: $(hostname)"
echo "Date: $(date)"
echo "Uptime: $(uptime -p)"
echo ""

echo "--- CPU Load ---"
echo "Load Average: $(cat /proc/loadavg | awk '{print $1, $2, $3}')"
echo ""

echo "--- Memory Usage ---"
free -m | awk 'NR==2{printf "Used: %sMB / %sMB (%.1f%%)\n", $3, $2, $3*100/$2}'
echo ""

echo "--- Disk Usage ---"
DISK_USAGE=$(df -h / | awk 'NR==2{print $5}' | tr -d '%')
echo "Root partition: ${DISK_USAGE}% used"

if [ "$DISK_USAGE" -gt 80 ]; then
    echo "WARNING: Disk usage is above 80%!"
else
    echo "Status: OK"
fi
echo ""

echo "--- Top 5 Processes by Memory ---"
ps aux --sort=-%mem | awk 'NR<=6{printf "%-10s %-6s %s\n", $1, $4"%", $11}'
echo ""

echo "=============================="
echo "  Health check complete."
echo "=============================="