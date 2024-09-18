#! /bin/sh

for f in *".log";
do 
    sed -i 's/ERROR/WARNING/g' $f
done