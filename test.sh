#!/bin/bash

echo "What do you want to do? (choose from *, +, -, /)"
read operand

if [[ "$operand" != "*" && "$operand" != "+" && "$operand" != "-" && "$operand" != "/" ]]; then
	    echo "Error: Invalid operand '$operand'. Exiting the script."
	        exit 1  # Exit with a non-zero status
fi

echo "First operand?"
read first

echo "Second operand?"
read second

# Fixing the syntax for the if statement
if [[ "$operand" == "/" ]]; then
	    # Removing the space after result=
	        result=$(echo "scale=2; $first $operand $second" | bc)
	else
		    result=$(($first $operand $second))  # Using $(( )) for integer arithmetic
fi

echo "The result of $first $operand $second is $result"

