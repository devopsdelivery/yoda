#! /bin/sh

threshold=80

usage=$(df | grep -v Filesystem | while read -r _ _ _ _ usage _; do echo "${usage%?}"; done )

if  [ "$usage" -gt "$threshold" ]; then
  echo "Warning: Disk usage is above "$threshold". Current usage: "$usage
  else
  echo "Disk usage ok. Current usage: $usage"
fi
