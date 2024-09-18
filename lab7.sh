#!/bin/bash

# Website to check
URL="https://github.com/devopsdelivery/yoda"

# Check if the website is reachable using curl
if curl --output /dev/null --silent --head --fail "$URL"; then
	    echo "Website is up."
    else
	        echo "Website is down."
fi

