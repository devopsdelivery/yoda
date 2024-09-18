#!/bin/bash

# Set the prefix to "backup_"
prefix="backup_"

# Get the full path of the script
script_path="$0"

# Extract the directory from the script path
directory="${script_path%/*}"

# Rename files by adding the prefix
for file in "$directory"/*; do
    if [ -f "$file" ]; then  # Check if it's a regular file
        filename=$(basename "$file")  # Get the file name
        mv "$file" "$directory/$prefix$filename"  # Rename the file
        echo "Renamed '$filename' to '$prefix$filename'"
    fi
done

echo "Renaming completed."

