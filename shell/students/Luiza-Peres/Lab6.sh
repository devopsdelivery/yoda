#! /bin/sh
STATUS=$(systemctl is-active postgresql)

if [ $STATUS = active ]; 
 then
    echo "PostgreSQL service is running."
else
    echo "PostgreSQL service is not running. Starting the service..."
    sudo systemctl start postgresql
    
fi
