#!/bin/bash

WEBSITE="https://github.com/devopsdelivery/yoda"
LOG_FILE="website_status.log"

RESPONSE=$(curl -o /dev/null -s -w "%{http_code}\n" "$WEBSITE")

if [ "$RESPONSE" -eq 200 ]; then
    echo "$(date): The website $WEBSITE is up (Status Code: $RESPONSE)" >> "$LOG_FILE"
else
    echo "$(date): The website $WEBSITE is down (Status Code: $RESPONSE)" >> "$LOG_FILE"
fi
