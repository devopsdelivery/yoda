#!/bin/sh


# The '$#' counts the numbers os arguments that were passed. If this number is different from 3'
if [ "$#" -ne 3 ]; then
    echo "Error: You need to input 3 numbers."
    exit 1
fi

# Fuction to check if a number is odd or even. 
check_even_odd() {
    if [ $(( $1 % 2 )) -eq 0 ]; then
        echo "$1 is even"
    else
        echo "$1 is odd"
    fi
}


#  The "$@  is a list of arguments so this is an iteraction for every number that was inputted"
for num in "$@"; do
    check_even_odd "$num"
done