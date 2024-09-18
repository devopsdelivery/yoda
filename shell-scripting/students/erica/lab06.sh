#!/bin/bash

# Status of PostgreSQL service
if ! systemctl is-active --quiet postgresql; then
    # If not running, start the service
    sudo systemctl start postgresql
    echo "$(date): PostgreSQL service was not running and has been started." >> /var/log/postgresql_service.log
else
    echo "PostgreSQL service is already running."
fi
