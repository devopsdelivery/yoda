#! /bin/sh
for f in *".log";
do
    echo $f
    sed -i "s/ERROR/WARNING/g" $f
done


