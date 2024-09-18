#! /bin/sh
set -x
for file in '../../../renamedir/'
do
  if [ -f $file ]
  then
    mv $file backup_$file
  fi
done 
set +x
