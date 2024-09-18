#! /bin/sh

for file in ../../../renamedir/*
do
  filename=$(basename "$file")
  echo $filename
  mv ../../../renamedir/$filename ../../../renamedir/backup_$filename
done
