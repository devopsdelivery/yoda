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



## Bash Scripting LAB6

#! /bin/sh

LOGFILE="/var/log/postgresql/postgresql-14-main.log"

if systemctl is-active --quiet postgresql; then
    echo "PostgreSQL service is running."
    exit
else
    echo "PostgreSQL service is not running."
    sudo systemctl start postgresql
    echo "$(date): PostgreSQL service started." >> "$LOGFILE"
    echo "PostgreSQL service has been started and logged."
fi

tail -f /var/log/postgresql/postgresql-14-main.log


Output:
goncalo@DESKTOP-0HE064V:/var/log/postgresql$ sh ~/scriptstest/shellexec6.sh
PostgreSQL service is not running.
/home/goncalo/scriptstest/shellexec6.sh: 11: cannot create /var/log/postgresql/postgresql-14-main.log: Permission denied
PostgreSQL service has been started and logged.
2024-09-18 15:39:42.738 BST [85821] LOG:  received fast shutdown request
2024-09-18 15:39:42.745 BST [85821] LOG:  aborting any active transactions
2024-09-18 15:39:42.748 BST [85821] LOG:  background worker "logical replication launcher" (PID 85829) exited with exit code 1
2024-09-18 15:39:42.748 BST [85824] LOG:  shutting down
2024-09-18 15:39:42.789 BST [85821] LOG:  database system is shut down
2024-09-18 15:39:50.657 BST [86862] LOG:  starting PostgreSQL 14.13 (Ubuntu 14.13-0ubuntu0.22.04.1) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0, 64-bit
2024-09-18 15:39:50.657 BST [86862] LOG:  listening on IPv4 address "127.0.0.1", port 5432
2024-09-18 15:39:50.663 BST [86862] LOG:  listening on Unix socket "/var/run/postgresql/.s.PGSQL.5432"
2024-09-18 15:39:50.677 BST [86863] LOG:  database system was shut down at 2024-09-18 15:39:42 BST
2024-09-18 15:39:50.688 BST [86862] LOG:  database system is ready to accept connections



## Bash Scripting LAB7


#! /bin/sh


WEBSITE="https://github.com/devopsdelivery/yoda"
LOGFILE="website_status.log"

RESPONSE=$(curl -o /dev/null -s -w "%{http_code}\n" "$WEBSITE")

if [ $RESPONSE -eq 200  ];
then
    echo "\n There is a connection code - $RESPONSE\n"
else
    echo "\n There isn't a connection code - $RESPONSE\n"
fi


Output:
goncalo@DESKTOP-0HE064V:~$ sh scriptstest/shellexec7.sh

 There is a connection code - 200
