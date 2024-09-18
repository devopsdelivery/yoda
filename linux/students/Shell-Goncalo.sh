## Bash Scripting LAB1

#! /bin/sh

read -p "What is your first name?" first_name
read -p "What is your last name?" last_name
read -p "Where were you born?" birth_place

echo "Nice to meet you $first_name $last_name from $birth_place!"


Output:
goncalo@DESKTOP-0HE064V:~/scriptstest$ ./shellexec1.sh
What is your first name?Goncalo
What is your last name?Batista
Where were you born?Portugal
Nice to meet you Goncalo Batista from Portugal!
