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


## Bash Scripting LAB2

 #!/bin/sh


if [ $# -ne 3 ]; then
        echo "Error"
        exit 1
fi

for i in "$@"
do
        if [ $((i%2)) -eq 0 ]; then
        Even_or_Odd_numb="even"
        else
        Even_or_Odd_numb="odd"
        fi

        echo "the number $i is $Even_or_Odd_numb"
done

Output:
goncalo@DESKTOP-0HE064V:~/scriptstest$ ./shellexec2.sh 1 2 3
the number 1 is odd
the number 2 is even
the number 3 is odd

