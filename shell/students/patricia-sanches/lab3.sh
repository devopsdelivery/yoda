#!/bin/bash

cd ~/yoda/renamedir

for file in *.txt;
do
mv "$file" "backup_$file"
done
