#!/bin/bash

#Create a script that will ask the following questions:

#What is your first name?
#What is your last name?
#Where were you born?
#And display this output:

#Nice to meet you "first name" "last name" from "birth place".



read -p "What is your first name? " first_name

read -p "What is your last name? " last_name

read -p "Where were you born? " birth_place

# output
echo "Nice to meet you \"$first_name\" \"$last_name\" from \"$birth_place\"."



