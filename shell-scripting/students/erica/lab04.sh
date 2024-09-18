#!/bin/bash

# Set threshold
THRESHOLD=80

#Define the variable USAGE
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')


#Prints the variable usage just to make sure that it's not empty
echo "Uso do disco detectado: $USAGE%"


#If the value of usage is greater that the constant variable thershold, then a message warning will be printed. otherwise the disk is ok
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "Warning: Disk usage is above $THRESHOLD%. Current usage: $USAGE%"
else
    echo "Disk usage ok. Current usage: $USAGE%"
fi
