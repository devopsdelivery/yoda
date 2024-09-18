#!/bin/bash

# Define the website and log file
WEBSITE="https://github.com/devopsdelivery/yoda"
LOG_FILE="website_status.log"

# Use curl to get the HTTP response code
RESPONSE=$(curl -o /dev/null -s -w "%{http_code}\n" "$WEBSITE")

# Get the current date and time for logging
CURRENT_TIME=$(date +"%Y-%m-%d %H:%M:%S")

# Check the HTTP response code
if [ "$RESPONSE" -eq 200 ]; then
	    echo "$CURRENT_TIME - Website is up. Response code: $RESPONSE" >> "$LOG_FILE"
	    echo "website up, saved in logfile"
    else
	        echo "$CURRENT_TIME - Website is down. Response code: $RESPONSE" >> "$LOG_FILE"
		echo "website down, saved in logfile"
fi


