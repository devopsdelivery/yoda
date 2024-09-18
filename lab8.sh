#!/bin/bash

# Function to check resource usage
check_usage() {
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    MEM_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    DISK_USAGE=$(df / | grep / | awk '{ print $5}' | sed 's/%//g')

    if (( $(echo "$CPU_USAGE > 80" | bc -l) )); then
        echo "Warning: CPU usage is above 80%. Current usage: $CPU_USAGE%"
    fi

    if (( $(echo "$MEM_USAGE > 90" | bc -l) )); then
        echo "Warning: Memory usage is above 90%. Current usage: $MEM_USAGE%"
    fi

    if (( $(echo "$DISK_USAGE > 85" | bc -l) )); then
        echo "Warning: Disk usage is above 85%. Current usage: $DISK_USAGE%"
    fi
}

# Limit the number of checks to 5 for testing
for i in {1..5}; do
    check_usage
    sleep 60x  # Wait for 1 minute
done

