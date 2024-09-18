#!/bin/bash

#set -x;


# Log file path
LOGFILE="/var/log/postgresql_service.log"

# Function to log messages
log_message() {
	touch "$LOGFILE"
	echo "$(date +'%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}

# Check if PostgreSQL service is running
if systemctl is-active --quiet postgresql; then
    echo "PostgreSQL service is running."
else
    echo "PostgreSQL service is not running. Starting service..."
    log_message "PostgreSQL service is not running."
    log_message "Starting PostgreSQL service."
    sudo systemctl start postgresql
    if systemctl is-active --quiet postgresql; then
	echo "PostgreSQL service started."
	log_message "PostgreSQL service is running."
    else
	echo "PostgreSQL service cannot start."
    	log_message "PostgreSQL service cannot start. Check logs for more info"
    fi
fi
