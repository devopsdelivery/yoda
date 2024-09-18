USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')
THRESHOLD=80


echo $(( USAGE )) -gt $(( THRESHOLD ))



if [ "$USAGE" -gt "$THRESHOLD" ];then
	echo "Disk usage ok. Current usage: $USAGE"
else
	echo "Warning: Disk usage is above $THRESHOLD. Current usage: $USAGE"

fi
