#!/bin/sh

BOLD=$(tput bold)
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
BLUE=$(tput setaf 4)
RESET=$(tput sgr0)

# This script renames all files in the ~/renamedir directory by prefixing them with 'backup_'.
# If a file already starts with 'backup_', an error message is displayed and the file is not renamed.
#
# Steps:
# 1. Change directory to ~/renamedir.
# 2. Iterate over all files in the directory.
# 3. For each file:
#    a. If the file name starts with 'backup_', print an error message.
#    b. Otherwise, rename the file by prefixing it with 'backup_'.
# 4. Change back to the previous directory, suppressing any output.
# 5. Exit the script with a status code of 0.
#
# Variables:
# - BOLD: Used to format the error message in bold text.
# - RED: Used to format the error message in red text.
# - RESET: Used to reset the text formatting.

cd ~/renamedir

for file in *; do
  if [[ $file == backup_* ]]; then
    echo -n $BOLD$RED"Error: "$RESET
	echo $BOLD"File '$file' already starts with 'backup_'"$RESET
  else
    mv "$file" "backup_$file"
  fi
done
cd - > /dev/null 2>&1
exit 0
