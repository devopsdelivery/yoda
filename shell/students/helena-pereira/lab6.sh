stat= systemctl is-active postgresql
inac= "inactive"

if [ "$stat" = "$inac" ]; then
	systemctl start postgresql
	echo 'activating'
else
	echo 'Is active already'
fi
