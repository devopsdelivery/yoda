#!/bin/bash

LOGFILE="/var/log/postgresql_management.log"

if systemctl is-active --quiet postgresql; then
    echo "PostgreSQL service is already running."
else
    echo "PostgreSQL service is not running. Starting it now..."
        sudo systemctl start postgresql

    echo "$(date): PostgreSQL service started." >> "$LOGFILE"
fi
