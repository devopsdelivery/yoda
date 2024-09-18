#!/bin/bash

WEBSITE="https://github.com/devopsdelivery/yoda"
LOG_FILE="website_status.log"


RESPONSE=$(curl -o /dev/null -s -w "%{http_code}\n" "$WEBSITE")

TIMESTAMP=$(date)

# Log the response
if [ "$RESPONSE" -eq 200 ]; then
    echo "$TIMESTAMP: $WEBSITE is up (HTTP Status: $RESPONSE)" >> "$LOG_FILE"
else
    echo "$TIMESTAMP: $WEBSITE is down (HTTP Status: $RESPONSE)" >> "$LOG_FILE"
fi
