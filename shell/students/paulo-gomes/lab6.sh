#!/bin/bash

#set -x;


# Check if the correct number of arguments is provided
if [ "$#" -ne 1 ]; then
	echo "Usage: $0 <arg1(true|false)> "
	exit 1
else 
   #if [ "$1" != "true" ] || [ "$1" != "false" ]; then 
   if [ "$1" != "true" ] && [ "$1" != "false" ]; then
        echo "Usage: $0 <arg1(true|false)> "
	exit 1
   fi	   
       #VERBOSE
       VERBOSE=$1
fi

# Log file path
LOGFILE="/var/log/postgresql_service.log"

# Function to log messages
log_message() {
	touch "$LOGFILE"
	echo "$(date +'%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}

# Check if PostgreSQL service is running
if systemctl is-active --quiet postgresql; then
	if [ "$VERBOSE" == "true" ]; then
		echo "PostgreSQL service is running."
	fi
    echo 0
    exit 0
else
    if [ "$VERBOSE" == "true" ]; then
	echo "PostgreSQL service is not running. Starting service..."
    fi	
    log_message "PostgreSQL service is not running."
    log_message "Starting PostgreSQL service."
    sudo systemctl start postgresql
    if systemctl is-active --quiet postgresql; then
        if [ "$VERBOSE" == "true" ]; then
        	echo "PostgreSQL service started."
        fi		    
	log_message "PostgreSQL service is running."
	echo 0
	exit 0
    else
        if [ "$VERBOSE" == "true" ]; then
               echo "PostgreSQL service cannot start."
	fi
    	log_message "PostgreSQL service cannot start. Check logs for more info"
	echo 1
	exit 0
    fi
fi
