#!/bin/sh

# # Exercises
# Create a script that will do the following:
# - Receive three numbers as input parameters
# - Print on stdout if each number is even or odd


# And display this output:

# First number is "even or odd"
# Second number is "even or odd"
# Third number is "even or odd"
# THE END

BOLD=$(tput bold)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
BLUE=$(tput setaf 4)
RESET=$(tput sgr0)

# $# represents the number of arguments passed to the script
# $@ represents all the arguments passed to the script
# $0 represents the script name (first argument)

# -ne means "not equal"
# -eq means "equal"
# -a means "and"
# -o means "or"
# -z means "zero length"
# $((...)) is used for arithmetic operations

if [ $# -ne 3 ]; then
	echo $BOLD$RED"Error: Bad input"$RESET
	echo $BOLD"Usage:"$RESET $0"<number1> <number2> <number3>"$RESET
	exit 1
fi

index=1

for i in $@; do
	case $index in
		(1) echo -n $BOLD$BLUE"First number is ";;
		(2) echo -n $BOLD$GREEN"Second number is ";;
		(3) echo -n $BOLD$BLUE"Third number is ";;
	esac
	if [ $((i % 2)) -eq 0 ]; then
		echo "even"$RESET
	else
		echo "odd"$RESET
	fi
	index=$((index + 1))
done

echo $BOLD"THE END"$RESET
exit 0

