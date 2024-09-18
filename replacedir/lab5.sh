#!/bin/bash

# Get the directory where the script is located
directory="$(dirname "$0")"

# Loop through all files in the directory
for file in "$directory"/*; do
	    # Check if it's a regular file
	        if [ -f "$file" ]; then
			        # Use sed to replace "ERROR" with "WARNING"
				        sed -i 's/ERROR/WARNING/g' "$file"
					        echo "Replaced 'ERROR' with 'WARNING' in '$file'"
						    fi
					    done

					    echo "Replacement completed."

