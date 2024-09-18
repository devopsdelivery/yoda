#!/bin/bash

# Define log file
LOG_FILE="postgresql_service_check.log"

# Function to log actions
log_action() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOG_FILE"
}

# Check if PostgreSQL service is running
if systemctl is-active --quiet postgresql; then
    echo "PostgreSQL service is running."
else
    echo "PostgreSQL service is not running."
    
    # Ask user if they want to start the service
    read -p "Do you want to start the PostgreSQL service? (y/n): " choice
    
    if [[ "$choice" == "y" || "$choice" == "Y" ]]; then
        sudo systemctl start postgresql
        echo "PostgreSQL service has been started."
        log_action "Started PostgreSQL service."
    else
        echo "PostgreSQL service remains stopped."
        log_action "User chose not to start PostgreSQL service."
    fi
fi

