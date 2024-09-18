#!/bin/bash

#Create a script that will do the following:

#Receive three numbers as input parameters
#Print on stdout if each number is even or odd
#Shouldn't allow less or more than three input parameters. Meaning that if the user provides a number of input parameters different form three a error message should be presented.
#And display this output:

#First number is "even or odd"
#Second number is "even or odd"
#Third number is "even or odd"



# Check if exactly three arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Error: Please provide exactly three numbers."
    exit 1
fi

# Process each input number
for i in {1..3}; do
    number=${!i}  # Get the i-th argument
    if (( number % 2 == 0 )); then
       	result="even"
    else
	result="odd"
    fi

    if [ $i == 1 ]; then
	    number="First"
    elif [ $i == 2 ]; then
	    number="Second"
    else [ $i == 3 ]; 
	    number="Third"
   fi

    echo "$number number is $result"
done

