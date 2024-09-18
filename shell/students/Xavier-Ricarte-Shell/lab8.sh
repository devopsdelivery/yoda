#!/bin/bash

LOGFILE="resource_monitor.log"

log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}

check_resources() {
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    MEM_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

    if (( $(echo "$CPU_USAGE > 80" | bc -l) )); then
        log_message "WARNING: CPU usage is high at ${CPU_USAGE}%."
        echo "WARNING: CPU usage is high at ${CPU_USAGE}%."
    fi
    if (( $(echo "$MEM_USAGE > 90" | bc -l) )); then
        log_message "WARNING: Memory usage is high at ${MEM_USAGE}%."
        echo "WARNING: Memory usage is high at ${MEM_USAGE}%."
    fi
    if [ "$DISK_USAGE" -gt 85 ]; then
        log_message "WARNING: Disk usage is high at ${DISK_USAGE}%."
        echo "WARNING: Disk usage is high at ${DISK_USAGE}%."
    fi
}

while true; do
    check_resources
    sleep 60
done
