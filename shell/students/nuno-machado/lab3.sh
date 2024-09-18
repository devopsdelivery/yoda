#!/bin/bash

dir="/root/renamedir"

for file in "$dir"/*; do
    mv "$file" "$dir/backup_$(basename "$file")"
done
