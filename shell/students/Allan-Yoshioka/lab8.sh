
#! /bin/bash
printf "Memory\t\tDisk\t\tCPU\n"
end=$((SECONDS+3600))
while [ $SECONDS -lt $end ]; do
MEMORY=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
DISK=$(free | grep Mem | awk '{print $3/$2 * 100.0}')
CPU=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')


echo "%$MEMORY%$DISK%$CPU"

if [ $MEMORY -gt 80 ];
then
    echo "-----------------------"
    echo "CPU usage exceeds 80%." 
    echo "-----------------------"
fi

if [ $DISK -gt 90 ];
then
    echo "-----------------------"
    echo "Memory usage exceeds 90%." 
    echo "-----------------------"
fi

if [ $CPU -gt 85 ];
then
    echo "-----------------------"
    echo "Disk usage exceeds 85%." 
    echo "-----------------------"
fi
sleep 2
done