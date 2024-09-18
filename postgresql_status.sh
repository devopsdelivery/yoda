#!/bin/bash

# Check if PostgreSQL service is running
if systemctl is-active --quiet postgresql; then
	    echo "PostgreSQL service is running."
    else
	        echo "PostgreSQL service is not running. Starting it now..."
		    # Start the PostgreSQL service
		       sudo systemctl start postgresql
			    
			    # Check if the service started successfully
			        if systemctl is-active --quiet postgresql; then
					        echo "PostgreSQL service started successfully."
						    else
							            echo "Failed to start PostgreSQL service."
								        fi
fi

