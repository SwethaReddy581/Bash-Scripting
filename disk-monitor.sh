#!/bin/bash

THRESHOLD=80
EMAIL="swetha.mekala81@outlook.com"

USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "Current Disk Usage: $USAGE%"

if [ "$USAGE" -gt "$THRESHOLD" ]
then
    echo "Disk usage has reached $USAGE%" | mail -s "Disk Space Alert" "$EMAIL"
    echo "Email notification sent."
else
    echo "Disk usage is normal."
fi
