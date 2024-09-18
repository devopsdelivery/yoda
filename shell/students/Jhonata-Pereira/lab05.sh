#!/bin/sh

BOLD=$(tput bold)
RESET=$(tput sgr0)

# This script processes all files in a specified directory, 
#	replacing occurrences of the word "ERROR" with "WARNING".
# 
# Steps:
# 1. Change directory to ~/replacedir.
# 2. Define formatting variables for bold and reset text styles using `tput`.
# 3. Loop through each file in the directory:
#    a. Print the file name in bold with the label "BEFORE".
#    b. Display the contents of the file.
#    c. Use `sed` to replace all instances of "ERROR" with "WARNING" in the file.
#    d. Print the file name in bold with the label "AFTER".
#    e. Display the modified contents of the file.
#    f. Print a newline for separation.
# 4. Return to the previous directory, suppressing output.
# 5. Exit the script with a status of 0.

cd ~/replacedir

for file in *; do
	echo $BOLD"BEFORE: "$file$RESET
	cat $file
	sed -i 's/ERROR/WARNING/g' $file
	echo -e $BOLD"\nAFTER: "$file$RESET
	cat $file
	echo -e "\n"
done
cd - > /dev/null 2>&1
exit 0
