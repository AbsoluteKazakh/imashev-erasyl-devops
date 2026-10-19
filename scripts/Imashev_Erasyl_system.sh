#!/bin/bash

cd "$(dirname "$0")/.."

echo "=============================="
echo "Student Information"
echo "=============================="
echo "Name: Erasyl"
echo "Surname: Imashev"
echo "Group: IT2-2301"
echo "Student ID: 37792"

echo "=============================="
echo "System Information"
echo "=============================="
echo "Username: $(whoami)"
echo "Hostname: $(hostname)"
echo "Current Date: $(date)"
echo "Operating System: $(uname -a)"

echo "Disk Usage:"
df -h /

echo "Memory Usage:"
free -h

if [ -f "Imashev_Erasyl_info.txt" ]; then
    echo "Student information file exists."
else
    echo "Student information file does not exist."
fi
