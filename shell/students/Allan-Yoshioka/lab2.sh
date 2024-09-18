#! /bin/sh

echo "Gime 3 numerbs!"
read first
read second 
read third 


if [ $((first%2)) -eq 0 ]
then
    echo "First number is even"
else 
    echo "First number is odd"
fi

if [ $((second % 2)) -eq 0 ]
then
    echo "Second number is even"
else 
    echo "Second number is odd"
fi


if [ $((third % 2)) -eq 0 ]
then
    echo "Third number is even"
else 
    echo "Third number is odd"
fi

