#!/bin/bash

#set -x;

DIRECTORY=$HOME/"renamedir/"
#cd $DIRECTORY
echo $DIRECTORY


for FILE in "$DIRECTORY"/*; do
	old_name_file=$(basename "$FILE")
	#echo $old_name_file
	new_name_file="backup_$old_name_file"
	#echo $new_name_file
	mv -v "$DIRECTORY$old_name_file" "$DIRECTORY$new_name_file"
done
