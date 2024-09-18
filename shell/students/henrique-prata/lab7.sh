#!/bin/bash

URL="https://github.com/devopsdelivery/yoda"
LOG_FILE="website_status.log"

# Check the website status
response=$(curl --write-out "%{http_code}" --silent --output /dev/null "$URL")

# Log the result with timestamp
if [ "$response" -eq 200 ]; then
    echo "$(date) - Website $URL is up (Status code: $response)" >> "$LOG_FILE"
else
    echo "$(date) - Website $URL is down (Status code: $response)" >> "$LOG_FILE"
fi

