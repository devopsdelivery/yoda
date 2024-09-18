stat= systemctl is-active postgresql
echo $stat

if [ $((stat)) = "inactive" ];
	then systemctl start postgresql
	echo sustemctl is-active postgresql
fi

echo $stat
