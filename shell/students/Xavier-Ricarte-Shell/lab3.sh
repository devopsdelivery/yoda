#!/bin/bash

DIRECTORY="renamedir"

# Check if the directory exists
if [ ! -d "$DIRECTORY" ]; then
    echo "Error: Directory '$DIRECTORY' does not exist."
    exit 1
fi

# Loop through all files in the directory
for file in "$DIRECTORY"/*; do
    # Check if it is a regular file
    if [ -f "$file" ]; then
        # Get the base file name
        base_name=$(basename "$file")
        # Construct new file name
        new_name="$DIRECTORY/backup_$base_name"
        # Rename the file
        mv "$file" "$new_name"
        echo "Renamed '$file' to '$new_name'"
    else
        echo "'$file' is not a regular file, skipping."
    fi
done
