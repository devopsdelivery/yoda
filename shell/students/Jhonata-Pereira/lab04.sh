#!/bin/sh

BOLD=$(tput bold)
GREEN=$(tput setaf 2)
YELOW=$(tput setaf 3)
RESET=$(tput sgr0)

# This script checks the disk usage of the root filesystem and compares it against a defined threshold.
# If the disk usage exceeds the threshold, a warning message is displayed.
# Otherwise, it confirms that the disk usage is within acceptable limits.
#
# Variables:
#   THRESHOLD: The disk usage percentage threshold to trigger a warning.
#   USAGE_PERCENT: The current disk usage percentage of the root filesystem.
#   USAGE_AVAL_MB: The amount of disk space currently used in megabytes.
#   USAGE_TOTAL_MB: The total disk space available in megabytes.
#
# Output:
#   Displays the current disk usage in megabytes and percentage.
#   If the disk usage exceeds the threshold, a warning message is displayed.
#   Otherwise, it confirms that the disk usage is within acceptable limits.

THRESHOLD=80
USAGE_PERCENT=$(df -m / | grep / | \
	awk '{ print $5 }' | sed 's/%//') # Get disk usage percentage
USAGE_AVAL_MB=$(df -m / | grep / | awk '{ print $3 }') # Get disk usage in MB
USAGE_TOTAL_MB=$(df -m / | grep / | awk '{ print $2 }') # Get total disk space in MB

echo -e $BOLD"\nDisk usage: $USAGE_AVAL_MB/$USAGE_TOTAL_MB"" MB ($USAGE_PERCENT"% in use")"

if [ $USAGE_PERCENT -gt $THRESHOLD ]; then
	echo -n $BOLD$YELOW"Warning: "$RESET
	echo $BOLD"Disk usage is above $THRESHOLD%. "$RESET
else
	echo $BOLD"Disk usage:$GREEN OK."$RESET
fi
echo "Current usage: $USAGE_AVAL_MB""MB"
exit 0