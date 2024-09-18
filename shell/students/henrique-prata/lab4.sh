#! /bin/sh

threshold=80

usage=$(df / | grep / | awk '{print $5}' | sed 's/%//')

if  [ "$usage" -gt "$threshold" ]; then
  echo "Warning: Disk usage is above "$threshold". Current usage: "$usage
  else
  echo "Disk usage ok. Current usage: $usage"
fi
