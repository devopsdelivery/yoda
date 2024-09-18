#! /bin/sh

WEBSITE="https://github.com/devopsdelivery/yoda"
LOG_FILE="website_status.log"

RESPONSE=$(curl -o /dev/null -s -w "%{http_code}\n" "$WEBSITE")

if [ $RESPONSE -eq 200  ];
then 
    echo "\n There is a connection code - $RESPONSE\n"
else
    echo "\n There isn't a connection code - $RESPONSE\n"
fi