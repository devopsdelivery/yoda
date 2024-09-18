#! /bin/sh 

first=$1
second=$2
third=$3


if [ $((first % 2)) -eq 0 ];
then
    echo the first number is even
else
    echo the first number is odd 
fi


if [ $((second % 2)) -eq 0 ];
then
    echo the second number is even
else
    echo the second number is odd 
fi

if [ $((third % 2)) -eq 0 ];
then
    echo the third number is even
else
    echo the third number is odd 
fi

