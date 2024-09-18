
	read -p "Digite 3 numeros :" input

	count=$(echo $input | wc -w)

	if [ $((count)) -eq 3 ];
		then
			for number in $input; do
				if [ $(($number%2)) -eq 0 ]
					then echo "$number is even";
					else echo "$number is odd";
				fi
			done

		else
			echo "put exact 3 numbers"
	fi
