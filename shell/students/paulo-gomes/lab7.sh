#!/bin/bash

#set -x

# Log_file
LOGFILE="website_status.log"
touch $LOGFILE

# URL
URL="https://github.com/devopsdelivery/yoda"


# Perform the curl request
RESPONSE=$(curl -o /dev/null -s -w "%{http_code}" "$URL")

# Check the HTTP status code
if [ "$RESPONSE" -eq 200 ]; then
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $URL is up (HTTP Status: $RESPONSE)." 
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $URL is up (HTTP Status: $RESPONSE)." >> "$LOGFILE"
else
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $URL is down (HTTP Status: $RESPONSE)." 
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $URL is down (HTTP Status: $RESPONSE)." >> "$LOGFILE"
fi

