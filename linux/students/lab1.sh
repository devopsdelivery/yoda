#!/bin/sh

# # Exercises
# Create a script that will ask the following questions:
# - What is your first name?
# - What is your last name?
# - Where were you born?

# And display this output:
# <h3> Nice to meet you <b>"first name" "last name"</b> from <b>"birth place"</b>!</h3>

BOLD=$(tput bold)
RED=$(tput setaf 1)
RESET=$(tput sgr0)

# -p flag is used to prompt the user for input
read -p "What is your first name? " first_name 
read -p "What is your last name? " last_name
read -p "Where were you born? " birth_place

echo -n $BOLD
echo "Nice to meet you $first_name $last_name from $birth_place!"
echo -n $RESET