#!/bin/bash

FILE1=/root/yoda/shell/students/Francisco-Pereira/replacedir/replace1.log
FILE2=/root/yoda/shell/students/Francisco-Pereira/replacedir/replace2.log

sed -i 's/ERROR/WARNING/g' "$FILE1"
sed -i 's/ERROR/WARNING/g' "$FILE2"

echo "Replaced 'ERROR' with 'WARNING' in $FILE1 and $FILE2."
