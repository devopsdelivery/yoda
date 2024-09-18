#! /bin/sh

files=$(find ~/replacedir/*)

for file in $files
do
  sed -e 's/ERROR/WARNING/g' "$file"
done
