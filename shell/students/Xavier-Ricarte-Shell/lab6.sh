#!/bin/bash

LOGFILE="/var/log/postgresql_service.log"

if systemctl is-active --quiet postgresql; then
    echo "PostgreSQL service is running."
else
    echo "PostgreSQL service is not running."
fi

    sudo systemctl start postgresql

if systemctl is-active --quiet postgresql; then
     echo "$(date): PostgreSQL service started." >> "$LOGFILE"
     echo "PostgreSQL service has been started and logged."
else
     echo "$(date): Failed to start PostgreSQL"
fi
