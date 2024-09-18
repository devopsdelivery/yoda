#!/bin/bash

# Log_file
LOGFILE="website_status.log"
# URL
URL="https://github.com/devopsdelivery/yoda"

if curl --output /dev/null --silent --head --fail "$URL"; then
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $URL is up." >> "$LOGFILE"
else
    echo "$(date +'%Y-%m-%d %H:%M:%S') - $URL is down." >> "$LOGFILE"
fi

