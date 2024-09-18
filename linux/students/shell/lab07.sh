#! /bin/sh

# This script checks the HTTP status code of a specified website and logs the result.
# 
# Variables:
# WEBSITE - The URL of the website to check.
# LOGFILE - The name of the log file where the status will be recorded.
#
# The script uses the `curl` command to send a request to the specified website and captures the HTTP status code.
# If the status code is 200, it indicates a successful connection, and a corresponding message is printed.
# If the status code is not 200, it indicates a failure to connect, and a corresponding message is printed.

WEBSITE="https://github.com/devopsdelivery/yoda"
LOGFILE="website_status.log"

RESPONSE=$(curl -o /dev/null -s -w "%{http_code}\n" "$WEBSITE")

if [ $RESPONSE -eq 200  ];
then 
    echo "\n There is a connection code - $RESPONSE\n"
else
    echo "\n There isn't a connection code - $RESPONSE\n"
fi