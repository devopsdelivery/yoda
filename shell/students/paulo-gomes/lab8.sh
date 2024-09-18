#!/bin/bash

VERBOSE=true

# Log file for resource usage
LOGFILE="resource_usage.log"

# Function to get CPU usage
get_cpu_usage() {
    # Get the CPU usage as a percentage
    echo "$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}' | xargs printf "%.0f")"
}

# Function to get memory usage
get_memory_usage() {
    # Get the memory usage as a percentage
    echo "Memory Usage: $(free | grep Mem | awk '{print $3/$2 * 100.0}')%"
}

# Function to get disk usage
get_disk_usage() {
    # Get the disk usage for the root filesystem
    echo "Disk Usage: $(df -h / | grep / | awk '{print $5}')"
}

# Function to log resource usage
log_resources() {
    echo "$(date +'%Y-%m-%d %H:%M:%S')" >> "$LOGFILE"
    echo "CPU_USAGE" $((get_cpu_usage)) >> "$LOGFILE"
    echo "MEM_Usage" get_memory_usage >> "$LOGFILE"
    get_disk_usage >> "$LOGFILE"
    echo "-------------------------" >> "$LOGFILE"
    echo "$(date +'%Y-%m-%d %H:%M:%S')"
    echo "cpu_usage" $((get_cpu_usage))
    echo "memory_usage" $((get_memory_usage))
    echo "disk_usage" $((get_disk_usage))
}

# Infinite loop to monitor resources
while true; do
    log_resources
    if [ $((get_cpu_usage)) -gt 0 ]; then
	    echo "CPU usage exceeds 80%."
    fi	

    sleep 5  # Log every 5 seconds
done

