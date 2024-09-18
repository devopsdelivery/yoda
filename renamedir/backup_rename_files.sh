#!/bin/bash

# Set the prefix to "backup_"
prefix="backup_"

# Get the directory where the script is located
directory="$(dirname "$0")"

# Rename files by adding the prefix
for file in "$directory"/*; do
	    if [ -f "$file" ]; then  # Check if it's a regular file
		            filename=$(basename "$file")  # Get the file name
			            mv "$file" "$directory/$prefix$filename"  # Rename the file
				            echo "Renamed '$filename' to '$prefix$filename'"
					        fi
					done

					echo "Renaming completed."

