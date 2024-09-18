***
LAB1
***
#!/bin/sh

# Ask the first question
echo "What is your first name?"
read firstname

# Ask the second question
echo "What is your last name?"
read secondname

# Ask the third question
echo "Where were you born"
read place

# Create a string using the answers
output="Nice to meet you $firstname $secondname from $place."

# Display the output
echo "$output"

***
LAB2
***

#!/bin/sh

if [ "$#" -ne 3 ]; then
            echo "Error: You must provide exactly three numbers."
                exit 1
fi

check_even_odd() {
        if [ $(( $1 % 2 )) -eq 0 ]; then
                echo "$1 is even"
                    else
                         echo "$1 is odd"

        fi
}

first_result=$(check_even_odd "$1")
second_result=$(check_even_odd "$2")
third_result=$(check_even_odd "$3")

echo "First number  $first_result"
echo "Second number $second_result"
echo "Third number $third_result"

***
LAB3
***

***
LAB4
***

***
LAB5
***

***
LAB6
***

***
LAB7
***

***
LAB8
***
