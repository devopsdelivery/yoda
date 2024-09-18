#!/bin/sh

# # Exercises
# Create a script that will ask the following questions:
# - What is your first name?
# - What is your last name?
# - Where were you born?

# And display this output:
# Nice to meet you "first name" "last name" from "birth place"!

# tput is used to set terminal attributes
# bold is used to set the bold attribute
# sgr0 is used to reset all attributes
# setaf is used to set the foreground color using ANSI escape. 
##	- Each color has a number associated with it
BOLD=$(tput bold)
RED=$(tput setaf 1)
RESET=$(tput sgr0)

# read is used to read input from the user
# -p flag is used to prompt the user for input

read -p "What is your first name? " first_name 
read -p "What is your last name? " last_name
read -p "Where were you born? " birth_place

echo -n $BOLD
echo "Nice to meet you $first_name $last_name from $birth_place!"
echo -n $RESET