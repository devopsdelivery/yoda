#! /bin/sh

echo "Gime 3 numerbs!"
read first
read second 
read third 


if [ $((first%2)) -eq 0 ]
then
    "First number is even"
else 
    "First number is odd"
fi

if [ $((second % 2)) -eq 0 ]
then
    "second number is even"
else 
    "second number is odd"
fi


if [ $((third % 2)) -eq 0 ]
then
    "Third number is even"
else 
    "third number is odd"
fi

