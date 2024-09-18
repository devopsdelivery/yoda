#!/usr/bin/env bash

# Shebang that tells the system to use bash to interpret the script

## Exercises
# - What is your first name?
# - What is your last name?
# - Where were you born?

# Text formatting (bold and red)
BOLD=$(tput bold)
RED=$(tput setaf 1)
RESET=$(tput sgr0)

read -p "What's your favorite fruit? " fruit

echo -n $BOLD
case $fruit in
   (apple) echo "An apple a day keeps the doctor away.";;
  (banana) echo "Bananas are a good source of potassium.";;
  (cherry) echo "Cherries are a good source of antioxidants.";;
  (orange) echo "Oranges are a good source of vitamin C.";;
  (*)echo "I don't like $RED$fruit$RESET.";;
esac
echo -n $RESET
