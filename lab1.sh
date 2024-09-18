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
