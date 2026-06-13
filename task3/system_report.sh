#!/bin/bash

echo "================================="
echo "    System Information Report"
echo "================================="
echo ""

echo "User: $(whoami)"
echo "Hostname: $(hostname)"
echo "Date & Time: $(date)"
echo "Current Directory: $(pwd)"

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "================================="
echo "      End of Report"
echo "================================="
