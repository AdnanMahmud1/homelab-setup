#!/bin/bash

echo "===== System Information ====="
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "Current User: $(whoami)"
echo "Date and Time: $(date)"

echo ""
echo "===== OS Information ====="
cat /etc/os-release

echo ""
echo "===== Kernel Version ====="
uname -r

echo ""
echo "===== CPU Info ====="
lscpu | grep -E 'Model name|Architecture|CPU\(s\)'

echo ""
echo "===== Memory Info ====="
free -h

echo ""
echo "===== Disk Usage ====="
df -h /

echo ""
echo "===== Network Interfaces ====="
ip a

echo ""
echo "===== Top 5 Memory-consuming Processes ====="
ps aux --sort=-%mem | head -n 6
