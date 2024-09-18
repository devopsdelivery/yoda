#!/bin/bash

if [ "$#" -ne 3 ]; then
   echo "erro: da 3 numeros"
    exit 1
fi

check_even_odd() {
    if [ $(($1 % 2)) -eq 0 ]; then
         echo "$1 is even"
    else 
         echo "$1 is odd"
    fi
}

echo "first number: $(check_even_odd $1)"
echo "second  number: $(check_even_odd $2)"
echo "third number_ $(check_even_odd $3)"



