#!/bin/bash

# threshold of disk
THRESHOLD=80

# disk usage
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')

# Check if the disk usage exceeds the threshold
if [ "$USAGE" -gt "$THRESHOLD" ]; then
  echo "Warning: Disk usage is above $THRESHOLD%. Current usage: $USAGE%"
else
  echo "Disk usage ok. Current usage: $USAGE%"
fi


#set

