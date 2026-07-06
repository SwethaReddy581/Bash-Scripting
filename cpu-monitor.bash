
#!/bin/bash

THRESHOLD=80

CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print int(100-$8)}')

echo "Current CPU Usage: $CPU%"

if [ "$CPU" -gt "$THRESHOLD" ]
then
    echo "CPU Usage is $CPU%" | mail -s "High CPU Alert" swetha.mekala81@outlook.com
    echo "Email notification sent."
else
    echo "CPU usage is normal."
fi
