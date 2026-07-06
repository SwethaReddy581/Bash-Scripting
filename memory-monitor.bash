#!/bin/bash

THRESHOLD=80
EMAIL="swetha.mekala81@outlook.com"

TOTAL=$(free -m | awk '/^Mem:/ {print $2}')
USED=$(free -m | awk '/^Mem:/ {print $3}')

USAGE=$(( USED * 100 / TOTAL ))

echo "Memory Usage: $USAGE%"

if [ "$USAGE" -gt "$THRESHOLD" ]
then
    echo "Memory usage is $USAGE%" | mail -s "High Memory Usage Alert" "$EMAIL"
    echo "Email notification sent."
else
    echo "Memory usage is normal."
fi
