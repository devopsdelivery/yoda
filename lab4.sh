#!/bin/bash

# Set the threshold for disk usage
THRESHOLD=80

# Get the current disk usage percentage of the root filesystem
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')

# Check if the usage exceeds the threshold
if [ "$USAGE" -gt "$THRESHOLD" ]; then
	    echo "Warning: Disk usage is above $THRESHOLD%. Current usage: $USAGE%"
    else
	        echo "Disk usage ok. Current usage: $USAGE%"
fi


