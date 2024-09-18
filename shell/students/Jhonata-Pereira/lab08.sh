#!/bin/sh

# Define colors for output
BOLD=$(tput bold)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
RED=$(tput setaf 1)
RESET=$(tput sgr0)

# Define thresholds
CPU_THRESHOLD=80
MEMORY_THRESHOLD=90
DISK_THRESHOLD=85

log_file="/var/log/resource_monitor.log"

# Function to check disk usage
check_disk_usage() {
    USAGE_PERCENT=$(df -h / | grep / | awk '{ print $5 }' | sed 's/%//')
    USAGE_AVAL_MB=$(df -m / | grep / | awk '{ print $3 }')
    USAGE_TOTAL_MB=$(df -m / | grep / | awk '{ print $2 }')

    echo "${BOLD}Disk usage: ${USAGE_AVAL_MB}/${USAGE_TOTAL_MB} MB (${USAGE_PERCENT}% in use)${RESET}"

    if [ $USAGE_PERCENT -gt $DISK_THRESHOLD ]; then
        echo "${BOLD}${RED}Warning: Disk usage is above ${DISK_THRESHOLD}%${RESET}"
        echo "$(date) - Warning: Disk usage is above ${DISK_THRESHOLD}% - ${USAGE_PERCENT}% used" >> $log_file
    else
        echo "${BOLD}${GREEN}Disk usage: OK${RESET}"
    fi
}

# Function to check CPU usage
check_cpu_usage() {
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    echo "${BOLD}CPU usage: ${CPU_USAGE}%${RESET}"

    if [ $(echo "$CPU_USAGE > $CPU_THRESHOLD" | bc) -eq 1 ]; then
        echo "${BOLD}${RED}Warning: CPU usage is above ${CPU_THRESHOLD}%${RESET}"
        echo "$(date) - Warning: CPU usage is above ${CPU_THRESHOLD}% - ${CPU_USAGE}% used" >> $log_file
    else
        echo "${BOLD}${GREEN}CPU usage: OK${RESET}"
    fi
}

# Function to check memory usage
check_memory_usage() {
    MEMORY_USAGE=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
    echo "${BOLD}Memory usage: ${MEMORY_USAGE}%${RESET}"

    if [ $(echo "$MEMORY_USAGE > $MEMORY_THRESHOLD" | bc) -eq 1 ]; then
        echo "${BOLD}${RED}Warning: Memory usage is above ${MEMORY_THRESHOLD}%${RESET}"
        echo "$(date) - Warning: Memory usage is above ${MEMORY_THRESHOLD}% - ${MEMORY_USAGE}% used" >> $log_file
    else
        echo "${BOLD}${GREEN}Memory usage: OK${RESET}"
    fi
}

# Main loop to continuously monitor resources
while true; do
    check_cpu_usage
    check_memory_usage
    check_disk_usage
    echo "---------------------------------------"
    sleep 5
done
