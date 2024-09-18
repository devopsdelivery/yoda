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

if [ $# -ne 3 ]; then
	echo $BOLD$RED"Error: Bad input"$RESET
	echo $BOLD"Usage:"$RESET $0"<number1> <number2> <number3>"$RESET
	exit 1
fi

for i in $@; do
	if [ $((i % 2)) -eq 0 ]; then
		echo $BOLD$BLUE"$i is even"$RESET
	else
		echo $BOLD$GREEN"$i is odd"$RESET
	fi
done

