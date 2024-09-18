#!/bin/sh

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