#! /bin/sh

for file in *.txt; do
	echo $file
	mv "$file" "backup_$file"		
done

echo "Files have been renamed"
