# Linux basics LAB1

Welcome to the Linux basics laboratory. We prepared some exercises to improve your Linux knowledge.

## Exercises

Do the next exercises per order.

1. What is the user that you logged in?
```
ubuntu $ whoami
root
```
2. Display your current directory.
```
ubuntu $ pwd
/root
```

3. Change to the `/etc` directory
```
cd /etc
```
4. Now change to your home directory using only 3 key presses.
```
cd ~
```
5. Go to the parent directory of the current directory.
```
cd ..
```
6. Go to the root directory and list its content.
```
cd /
ls
```
7. List a long listing of the root directory.
```
ls -l
```
8. Stay where you are, and list the contents of `/etc`.
```
ls /etc
```
9. Stay where you are, and list the contents of `/bin` and `/sbin`.
```
ls /bin/ && ls /sbin
```
10. List all the files (including hidden files) in your home directory in a human readable format
```
ls -lah
```
11. Create a directory `linuxlab` in your home directory
```
mkdir ~/linuxlab
```
12. Change to the `/etc` directory, stay here and create a directory `testlinuxdir` in your home directory
```
cd /etc
mkdir ~/testlinuxdir
```

13. Create in one command the directories hierarchy ~/dir1/dir2/dir3 inside the diretory `textlinuxdir`. 
```
cd/etc
mkdir -p ~/testlinuxdir/dir1/dir2/dir3
```

14. Remove the directory `testlinuxdir`

```
rmdir ~/testlinuxdir/
```

# Linux basics LAB2

## Exercises

Do the next exercises per order.

1. Download the file `postgres_users.sql` (https://github.com/devopsdelivery/yoda/blob/erica/linux/files/postgres_users.sql) with the command `wget`.

2. Display the size and type of file of `postgres_users.sql`. 
```
command to display the size of the file- du -h postgres_user.sql
command to display the type of the file- file postgres_user.sql 
```

3. Display the type of file of `postgres_users.sql`.
```
command to display the type of the file- file postgres_user.sql 
```

4. Move the file `postgres_users.sql` to the directory `/linuxlab`. 
```
mv postgres_users.sql ~/linuxlab
``` 

5. Create a copy of the file `postgres_users.sql` with the name `postgres_newusers.sql`.

```
cp postgres_user.sql postgres_newusers.sql
``` 
6. Rename the file `postgres_newusers.sql` to `postgres_oldusers.sql`.

```
mv postgres_newusers.sql postgres_oldusers.sql
``` 

7. Create a directory `~/touched` and enter it.
```
mkdir ~/touched
``` 
8. Create the files `today.txt` and `yesterday.txt` in touched.

```
touch today.txt yesterday.txt && ls today.txt yesterday.txt
``` 

9. Change the creation date on `yesterday.txt` to match yesterday's date.
``` 
touch -t 202409150000 yesterday.txt 
``` 
10. Copy `yesterday.txt` to `copy.yesterday.txt`.

``` 
cp yesterday.txt copy.yesterday.txt
``` 
11. Create a directory called `~/testbackup` and copy all files from `~/touched` in it.

``` 
mkdir ~/testbackup && cp -r ~/touched/* ~/testbackup
``` 
12. Use one command to remove the directory `~/testbackup` and all files in it.

``` 
rm -rf ~/testbackup
``` 
13. Create a directory `~/etcbackup` and copy all *.conf files from `/etc` in it. Did you include all subdirectories of `/etc`?

``` 
mkdir ~/etcbackup && cp /etc/*.conf ~/etcbackup
``` 
# Linux basics LAB3

## Exercises

Do the next exercises per order.

1. Display the first 12 lines of `/etc/services`.

``` 
cd /etc  
ls se
head -n 12 services
head -n 12 services | wc -l (conta o número de linhas)
``` 

2. Display the last line of `/etc/passwd`.

``` 
tail -n 1 passwd
``` 

3. Create a file named `count.txt`.

``` 
touch count.txt
``` 

4. Use cp to make a backup of this file to `cnt.txt`. 


``` 
cp count.txt cnt.txt
``` 


5. Use more to display `/var/log/syslog`

``` 
more /var/log/syslog
``` 

6. Use ls to find the two biggest file in `/etc`.

``` 
cd /etc
ls -lS | head -n 3
``` 
# Linux basics LAB4

## Exercises

Do the next exercises per order.

1. List all files in `/etc` ending with “.conf”.

``` 
ls -a /etc/*.conf
``` 

2. List all commands in `/bin` starting with “mk”.

``` 
ls -a /bin/mk*
``` 

3. List all commands in `/bin` containing digits.

``` 
ls -a /bin/*[0-9]*
``` 

4. List all directories in `/etc` containing digits. 

``` 
ls -da /etc/*[0-9]*
```
5. List all files in `/boot` with name containing a dot (“.”) or a dash (“-”).

``` 
ls -a /boot | grep [.-]
```
# Linux basics LAB5

## Exercises

Do the next exercises per order.

1. Write the current date to the file `/~/tmp/now` (hint: use the date command)

``` 
date> ~/tmp/now
```
2. Copy the content of the file `/etc/services` to `/~/tmp/services` without using the commands “cp”, “mv” and “rm”.

``` 
cat /etc/services > ~/tmp/services
```

3. Sort all `/proc` directory content by line, and filter output to only display lines beginning with a digit (hint: use `grep ^[0-9]` and sort(1)). 


``` 
ls -1 /proc | sort | grep '^[0-9]'
```



4. List the filesystem root directory `/` content by line, and filter output to replace all consonants with the character “_” (hint: use `sed -e 's,[!aeiouy],_,g'`)


``` 
ls -1 /|sed -e 's,[!aeiouy],_,g'
```
# Linux basics LAB6

## Exercises

Do the next exercises per order.

1. In your home directory create the directory `/linuxdatabase`.

``` 
mkdir ~/linuxdatabase
```

2. Create the the file `create_users_table`.

``` 
touch create_users_table
```

3. Insert the content in the file [create_table_users.sql](/files/create_table_users.sql) into the file `create_users_table` (use the nano editor).

``` 
nano create_table_users
Ctrl+shift+C
nano create_users-table
Ctrl+Shift+V
```

4. Create the the file `insert_users_table`.

``` 
touch insert_users_table
```

5. Insert the content in the file [insert_table_users.sql](/files/insert_table_users.sql) into the file `insert_users_table` (use the nano editor).


``` 
nano insert_table_users
Ctrl+shift+C
nano insert_users_table
Ctrl+Shift+V
```

6. Add the files `create_users_table` and `insert_users_table` to a tar archive with the name `dbscripts.tar`.

``` 
tar -cf dbscripts.tar create_users_table insert_users_table
```


7. Extract the files from the tar archive `dbscripts.tar` to the directory `extracted_dbscripts`.

``` 
tar -xf dbscripts.tar
```

8. List all the apt packages installed in your system.

``` 
dpkg -l
```

9. Update the apt list.

``` 
sudo apt update
```

10. Install Postgres in your system.

``` 
sudo apt install postgresql
```
11. Check if the Postgres service (postgres.service) is running (hit: use systemctl).

``` 
systemctl status postgresql
```


12. Install the Postgres client.

``` 
sudo apt install postgresql -client
```
13. Using the Postgres client (`psql`) connect to the Postgres server and list the databases. 

``` 
sudo service postgresql start && sudo service postgresql status
sudo -u postgres psql
```
