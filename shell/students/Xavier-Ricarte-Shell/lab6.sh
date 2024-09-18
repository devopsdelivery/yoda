#!/bin/bash

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

