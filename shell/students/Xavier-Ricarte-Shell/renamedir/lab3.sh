#!/bin/bash

for f in *.txt; do
mv "$f" "backup_$f"
echo "This files were changed : $f "
done



