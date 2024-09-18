
#! /bin/sh

count=0

while [ $count -lt 3 ]; 
do 
  echo "Input your value"
  read number
  if [ $(($number % 2)) -eq 0 ];
  then 
    echo "$number is even"
  else
    echo "$number is odd"
  fi
  count=$((count+1))
done
