#!/bin/bash

# Log file location
LOGFILE="resource_monitor.log"
touch $LOGFILE

# Function to log messages
log_message() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}



while true; do

    cpu_usage=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}' | bc | xargs printf "%.0f")
    echo $cpu_usage
#    if (( $(echo "$cpu_usage > 8" | bc -l) )); then
        echo "Warning: CPU usage is above 80%. Current usage: $cpu_usage%"
        log_message "Warning: CPU usage is above 80%. Current usage: $cpu_usage%"
#    fi


    mem_total=$(free | grep Mem | awk '{print $2}')
    mem_used=$(free | grep Mem | awk '{print $3}')
    mem_usage=$(echo "scale=2; $mem_used / $mem_total * 100" | bc)
    if (( $(echo "$mem_usage > 9" | bc -l) )); then
        echo "Warning: Memory usage is above 90%. Current usage: $mem_usage%"
        log_message "Warning: Memory usage is above 90%. Current usage: $mem_usage%"
    fi


    
    disk_usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
    if [ "$disk_usage" -gt 8 ]; then
        echo "Warning: Disk usage is above 85%. Current usage: $disk_usage%"
        log_message "Warning: Disk usage is above 85%. Current usage: $disk_usage%"
    fi	    
    sleep 6  # Wait for 1 minute
done

