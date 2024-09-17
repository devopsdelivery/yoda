# Linux basics LAB1 #

Welcome to the Linux basics laboratory. We prepared some exercises to improve your Linux knowledge.

## Exercises

Do the next exercises per order.

1. What is the user that you logged in?

whoami

2. Display your current directory.

pwd

3. Change to the `/etc` directory

cd /etc

4. Now change to your home directory using only 3 key presses.

cd

5. Go to the parent directory of the current directory.

cd ..

6. Go to the root directory and list its content.

cd / && ll

7. List a long listing of the root directory.

ll /

8. Stay where you are, and list the contents of `/etc`.

ll /etc

9. Stay where you are, and list the contents of `/bin` and `/sbin`.

ll /bin /sbin

10. List all the files (including hidden files) in your home directory in a human readable format

ll -ah ~

11. Create a directory `linuxlab` in your home directory

mkdir ~/linuxlab

12. Change to the `/etc` directory, stay here and create a directory `testlinuxdir` in your home directory

cd /etc && mkdir ~/testlinuxdir

13. Create in one command the directories hierarchy ~/dir1/dir2/dir3 inside the diretory `textlinuxdir`. 

mkdir -p ~/textlinuxdir/dir1/dir2/dir3

14. Remove the directory `testlinuxdir`

rm -rf ~/testlinuxdir



***



# Linux basics LAB2


## Exercises

Do the next exercises per order.

1. Download the file `postgres_users.sql` (https://github.com/devopsdelivery/yoda/blob/natixis-academy/linux/files/postgres_users.sql) with the command `wget`.

wget https://github.com/devopsdelivery/yoda/blob/main/linux/files/postgres_users.sql

2. Display the size and type of file of `postgres_users.sql`. 

stat -c '%s %F' postgres_users.sql

3. Display the type of file of `postgres_users.sql`.

file postgres_users.sql

4. Move the file `postgres_users.sql` to the directory `/linuxlab`.  

mv postgres_users.sql ./linuxlab

5. Create a copy of the file `postgres_users.sql` with the name `postgres_newusers.sql`.

cp postgres_users.sql postgres_newusers.sql

6. Rename the file `postgres_newusers.sql` to `postgres_oldusers.sql`.

rename postgres_newusers.sql postgres_oldusers.sql

7. Create a directory `~/touched` and enter it.

mkdir ~/touched

8. Create the files `today.txt` and `yesterday.txt` in touched.

touch today.txt yesterday.txt

9. Change the creation date on `yesterday.txt` to match yesterday's date.

touch -d yesterday yesterday.txt
 
10. Copy `yesterday.txt` to `copy.yesterday.txt`.

cp yesterday.txt copy.yesterday.txt

11. Create a directory called `~/testbackup` and copy all files from `~/touched` in it.

mkdir ~/testbackup && cp ~/touched/* ~/testbackup

12. Use one command to remove the directory `~/testbackup` and all files in it.

rm -rf ~/testbackup

13. Create a directory `~/etcbackup` and copy all *.conf files from `/etc` in it. Did you include all subdirectories of `/etc`?

find /etc -type f -name '*.conf' -exec cp --parents {} ~/etcbackup \;
YES


***


# Linux basics LAB3

## Exercises

Do the next exercises per order.

1. Display the first 12 lines of `/etc/services`.

head -n 12 /etc/services

2. Display the last line of `/etc/passwd`.

tail -n 1 /etc/passwd

3. Create a file named `count.txt`.

touch count.txt

4. Use cp to make a backup of this file to `cnt.txt`. 

cp --backup=numbered count.txt cnt.txt

5. Use more to display `/var/log/syslog`

more /var/log/syslog

6. Use ls to find the two biggest file in `/etc`.

ls -lhS /etc | grep ^- | head -n 2



***

# Linux basics LAB4

## Exercises

Do the next exercises per order.

1. List all files in `/etc` ending with “.conf”.

ll /etc/*.conf

2. List all commands in `/bin` starting with “mk”.

ll /bin/mk*

3. List all commands in `/bin` containing digits.

ll /bin/\*[0-9]\*

4. List all directories in `/etc` containing digits. 

ll -d /etc/\*[0-9]\*

5. List all files in `/boot` with name containing a dot (“.”) or a dash (“-”).

ls -al /boot/\*[.-]\*



***

# Linux basics LAB5

## Exercises

Do the next exercises per order.

1. Write the current date to the file `/~/tmp/now` (hint: use the date command)

mkdir ~/tmp && date > /tmp/now

2. Copy the content of the file `/etc/services` to `/~/tmp/services` without using the commands “cp”, “mv” and “rm”.

mkdir ~/tmp && cat /etc/services > /tmp/services

3. Sort all `/proc` directory content by line, and filter output to only display lines beginning with a digit (hint: use `grep ^[0-9]` and sort(1)). 

ls /proc | grep '^[0-9]' | sort -V

4. List the filesystem root directory `/` content by line, and filter output to replace all consonants with the character “_” (hint: use `sed -e 's,[!aeiouy],_,g'`)

ls / | sed -e 's,[^aeiouyAEIOUY],_,g'


***


