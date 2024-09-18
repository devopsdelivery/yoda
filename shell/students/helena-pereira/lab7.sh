WEBSITE="https://github.com/devopsdelivery/yoda"
LOG_FILE="website_status.log"

RESPONSE=$(curl -o /dev/null -s -w "%{http_code}\n" "$WEBSITE")
echo $RESPONSE > $LOG_FILE
