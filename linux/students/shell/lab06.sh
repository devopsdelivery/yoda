#!/bin/bash

# This script checks the status of the PostgreSQL service and starts it if it is not running.
# It logs the action to a specified log file.
#
# LOGFILE: The path to the log file where actions will be recorded.
#
# If the PostgreSQL service is running, the script outputs a message and exits.
# If the PostgreSQL service is not running, the script starts the service,
# logs the action with a timestamp, and outputs a message indicating the service has been started.

LOGFILE="/var/log/postgresql_service.log"

if systemctl is-active --quiet postgresql; then
    echo "PostgreSQL service is running."
    exit
else
    echo "PostgreSQL service is not running."
    sudo systemctl start postgresql
    echo "$(date): PostgreSQL service started." >> "$LOGFILE"
    echo "PostgreSQL service has been started and logged."
fi
exit 0