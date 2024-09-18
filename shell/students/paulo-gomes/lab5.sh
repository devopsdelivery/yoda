#!/bin/bash

#set -x;

DIRECTORY=$HOME/"replacedir/"
#cd $DIRECTORY
echo $DIRECTORY


for FILE in "$DIRECTORY"/*; do
	name_file=$(basename "$FILE")
	echo $name_file
	##echo "Before:"
	sed -i.bak 's/ERROR/WARNING/g' "$DIRECTORY$name_file"
done
