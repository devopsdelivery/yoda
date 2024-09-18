## Bash Scripting LAB1

#! /bin/sh

read -p "What is your first name?" first_name
read -p "What is your last name?" last_name
read -p "Where were you born?" birth_place

echo "Nice to meet you $first_name $last_name from $birth_place!"


Output:
goncalo@DESKTOP-0HE064V:~/scriptstest$ ./shellexec1.sh
What is your first name?Goncalo
What is your last name?Batista
Where were you born?Portugal
Nice to meet you Goncalo Batista from Portugal!


## Bash Scripting LAB2

 #!/bin/sh


if [ $# -ne 3 ]; then
        echo "Error"
        exit 1
fi

for i in "$@"
do
        if [ $((i%2)) -eq 0 ]; then
        Even_or_Odd_numb="even"
        else
        Even_or_Odd_numb="odd"
        fi

        echo "the number $i is $Even_or_Odd_numb"
done

Output:
goncalo@DESKTOP-0HE064V:~/scriptstest$ ./shellexec2.sh 1 2 3
the number 1 is odd
the number 2 is even
the number 3 is odd


## Bash Scripting LAB3

#! /bin/sh


DIR=~/renamedir

for file in "$DIR"/*; do
        BASENAME=$(basename "$file")
        mv "$file" "$DIR/backup_$BASENAME"
done


echo  "All files have been renamed with the prefix 'backup_'."

ls -l


Output:
goncalo@DESKTOP-0HE064V:~/renamedir$ ./rename.sh
All files have been renamed with the prefix 'backup_'.
total 4
-rw-r--r-- 1 goncalo goncalo   0 Sep 18 14:07 backup_file1.txt
-rw-r--r-- 1 goncalo goncalo   0 Sep 18 14:07 backup_file2.txt
-rw-r--r-- 1 goncalo goncalo   0 Sep 18 14:07 backup_file3.txt



## Bash Scripting LAB4

#! /bin/sh


USAGE_PERCENTAGE=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

THRESHOLD=80;

if [ $USAGE_PERCENTAGE -ge $THRESHOLD ]
then
    echo "Warning: Disk usage is above $THRESHOLD%. Current usage: $USAGE_PERCENTAGE%"
else
    echo "Disk usage ok. Current usage: $USAGE_PERCENTAGE%"
fi

Output:
goncalo@DESKTOP-0HE064V:~/scriptstest$ sh shellexec4.sh
Disk usage ok. Current usage: 1%


## Bash Scripting LAB5

#! /bin/sh


DIR=~/replacedir

sed -i 's/ERROR/WARNING/g' "$DIR/replace1.log"
sed -i 's/ERROR/WARNING/g' "$DIR/replace2.log"

echo "Replaced 'ERROR' with 'WARNING' in both files."

Output:
goncalo@DESKTOP-0HE064V:~/scriptstest$ sh ./shellexec5.sh
Replaced 'ERROR' with 'WARNING' in both files.


