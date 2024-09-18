#!/bin/bash

while true; do
    # Get the CPU usage
    cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2}' | cut -d '.' -f1)

    # Get the memory usage
    mem_usage=$(free | awk '/Mem/{printf("%.2f"), $3/$2*100}')

    # Get the disk usage
    disk_usage=$(df -h / | awk 'NR==2{print $5}' | cut -d'%' -f1)

    # Check the thresholds and send alerts
    if [ $cpu_usage -gt 80 ]; then
        echo "CPU usage exceeds 80%: $cpu_usage%" | tee -a system_monitor.log
    fi

    if [ $mem_usage -gt 90 ]; then
        echo "Memory usage exceeds 90%: $mem_usage%" | tee -a system_monitor.log
    fi

    if [ $disk_usage -gt 85 ]; then
        echo "Disk usage exceeds 85%: $disk_usage%" | tee -a system_monitor.log
    fi

    sleep 60
done
