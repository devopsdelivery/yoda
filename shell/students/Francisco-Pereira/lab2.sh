#n! /bin/sh

echo "provide 3 numbers"
read num1
read num2
read num3

if ((num1 % 2 != 0 )); then
	echo "First is impar"
else
	echo "First number is odd"
fi

if ((num2 % 2 != 0 )); then
        echo "Second number is impar"
else
        echo "Second number is odd"
fi

if ((num3 % 2 != 0 )); then
        echo "Third number is impar"
else
        echo "Third number is odd"
fi
