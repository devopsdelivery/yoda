#! /bin/sh

STATUS=$(systemctl is-active postgresql.service);

if [ $STATUS = active ]; 
then
echo "Postgresql is running"
else
echo "Postgresql isn't running, the processe will be started" && sudo systemctl start postgresql.service
fi