#! /bin/sh

threshold=80

USAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $USAGE -ge $THRESHOLD ]
then
    echo "Warning: Disk usage is above $THRESHOLD%. Current usage: $USAGE%"
else 
    echo "Disk usage ok. Current usage: $USAGE%" 
fi


