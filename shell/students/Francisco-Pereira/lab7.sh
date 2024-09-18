#! /bin/bash

URL="https://github.com/devopsdelivery/yoda"

LOGFILE="curl_log.txt"

TIMESTAMP=$(date "+%Y-%-m%d %H:%M:%S")

HTTP_STATUS=$(curl -o /dev/null -s -w "%{http_code}" $URL)

if [ $HTTP_STATUS -eq 200 ];
then
	echo "$TIMESTAMP - $URL esta acessivel (HTTP $HTTP_STATUS)." >> $LOGFILE
else
	 echo "$TIMESTAMP - $URL esta inacessivel (HTTP $HTTP_STATUS)." >> $LOGFILE
fi

echo "Verificacao concluida, resultados em $LOGFILE "
