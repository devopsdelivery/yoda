
echo "Please provide 3 numbers"
read number1
read number2
read number3

if (( number1 % 2==0 )); then
	echo "First Number is odd"
else
	echo "First Number is even"
fi

if (( number2 % 2==0 )); then
        echo "Second Number is odd"
else
        echo "Second Number is even"
fi

if (( number3 % 2 ==0 )); then
        echo "Third Number is odd"
else
        echo "Third Number is even"
fi


