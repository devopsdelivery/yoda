# Lab1 
## Exercises

1. What is the user that you logged in?
````
whoami
````
2. Display your current directory.
`````
pwd
``````
3. Change to the `/etc` directory
``````
cd /etc
``````
4. Now change to your home directory using only 3 key presses.
`````` 
cd ~/home
`````` 
5. Go to the parent directory of the current directory.
`````` 
cd ..
`````` 
6. Go to the root directory and list its content.
`````` 
$cd 
$ls
``````
 7. List a long listing of the root directory.
`````` 
ls / -l
`````` 
8. Stay where you are, and list the contents of `/etc`.
`````` 
ls /etc
`````` 
9. Stay where you are, and list the contents of `/bin` and `/sbin`.
`````` 
ls /bin && /sbin
`````` 
10. List all the files (including hidden files) in your home directory in a human readable format
`````` 
ls -a -h
`````` 
11. Create a directory `linuxlab` in your home directory
`````` 
mkdir ~/home/linuxlab
`````` 
12. Change to the `/etc` directory, stay here and create a directory `testlinuxdir` in your home directory
`````` 
cd /etc
mkdir ~/home/testlinuxdir
`````` 
13. Create in one command the directories hierarchy ~/dir1/dir2/dir3 inside the diretory `textlinuxdir`. 
`````` 
mkdir -p ~/home/dir1/dir2/dir3
`````` 
14. Remove the directory `testlinuxdir`
`````` 
rm ~/home/testlinuxdir
`````` 

# Lab2

## Exercises

1. Download the file `postgres_users.sql` (https://github.com/devopsdelivery/yoda/blob/main/linux/files/postgres_users.sql) with the command `wget`.
`````` 
wget https://github.com/devopsdelivery/yoda/blob/main/linux/files/postgres_users.sql
`````` 

2. Display the size and type of file of `postgres_users.sql`. 
`````` 
file postgres_users.sql && du -h postgres_users.sql
`````` 

3. Display the type of file of `postgres_users.sql`.
`````` 
file postgres_users.sql
``````  

4. Move the file `postgres_users.sql` to the directory `/linuxlab`. 
`````` 
cp postgres_users.sql ~/linuxlab
`````` 

5. Create a copy of the file `postgres_users.sql` with the name `postgres_newusers.sql`.
`````` 
cp postgres_users.sql postgres_newusers.sql
`````` 

6. Rename the file `postgres_newusers.sql` to `postgres_oldusers.sql`.
``````
mv postgres_users.sql postgres_oldusers.sql
``````

7. Create a directory `~/touched` and enter it.
``````
mkdir touched 
cd touched/
``````

8. Create the files `today.txt` and `yesterday.txt` in touched.
``````
touch today.txt && touch yesterday.txt
``````

9. Change the creation date on `yesterday.txt` to match yesterday's date.
``````
touch -t 202409150000 yesterday.txt 
ls -la yesterday.txt 
``````

10.  Copy `yesterday.txt` to `copy.yesterday.txt`.
``````
 cp yesterday.txt copy.yesterday.txt
``````

11.  Create a directory called `~/testbackup` and copy all files from `~/touched` in it.
``````
mkdir testbackup
cp -r testbackup touched
``````

12.  Use one command to remove the directory `~/testbackup` and all files in it.
``````
rm -r testbackup
``````

13.  Create a directory `~/etcbackup` and copy all *.conf files from `/etc` in it. Did you include all subdirectories of `/etc`?
``````
mkdir etcbackup
cp -r /etc etcbackup
``````

# Lab 3 

## Exercises

1. Display the first 12 lines of `/etc/services`.
````
$cd /etc
head -n 12 services 
````

2. Display the last line of `/etc/passwd`.
```
tail -n 1 services
```

3. Create a file named `count.txt`.
```
touch count.txt
````

4. Use cp to make a backup of this file to `cnt.txt`. 
````
cp count.txt backup_count.txt
````

5. Use more to display `/var/log/syslog`
````
more -d /var/log/syslog
````
6. Use ls to find the two biggest file in `/etc`.
````
ls -S /etc | head -n 2
````

# Lab 4 

1. List all files in `/etc` ending with “.conf”.
````
ls /etc/*.conf
````
2. List all commands in `/bin` starting with “mk”.
````
ls /bin/mk*
````
3. List all commands in `/bin` containing digits.
````
ls /bin/*[0-9]*
````
4. List all directories in `/etc` containing digits. 
````
ls /etc/*[0-9]*/
## another option ls /bin/ | grep [0-9]
````
5. List all files in `/boot` with name containing a dot (“.”) or a dash (“-”).
````
ls  /boot/*[.-]*
````

# Lab 5

1. Write the current date to the file `/~/tmp/now` (hint: use the date command)
`````
date +"Year: %Y, Month: %m, Day: %d" > now.txt
`````

2. Copy the content of the file `/etc/services` to `/~/tmp/services` without using the commands “cp”, “mv” and “rm”.
````
rsync -a /etc/services /~/tmp
````

3. Sort all `/proc` directory content by line, and filter output to only display lines beginning with a digit (hint: use `grep ^[0-9]` and sort(1)). 
````
 ls -d -v /proc/*[0-9]* 
````

4. List the filesystem root directory `/` content by line, and filter output to replace all consonants with the character “_” (hint: use `sed -e 's,[!aeiouy],_,g'`)
````
ls -l / | sed -e 's,[!aeiouy],_,g'
````

# lab 6

1. In your home directory create the directory `/linuxdatabase`.
````
 mkdir ~/home/linuxdatabase
````

2. Create the the file `create_users_table`.
````
touch create_users_table.txt
````

3. Insert the content in the file [create_table_users.sql](/files/create_table_users.sql) into the file `create_users_table` (use the nano editor).
````
cp create_table_users.sql create_users_table.txt 
````

4. Create the the file `insert_users_table`.
````
touch insert_users_table.txt
````

5. Insert the content in the file [insert_table_users.sql](/files/create_table_users.sql) into the file `insert_users_table` (use the nano editor).
````
cp insert_table_users.sql insert_user_table.txt 
````

6. Add the files `create_users_table` and `insert_users_table` to a tar archive with the name `dbscripts.tar`. 
`````
tar -cf dbscripts.tar \create_users_table.txt \insert_users_table.txt
``````

7. Extract the files from the tar archive `dbscripts.tar` to the directory `extracted_dbscripts`.
``````
tar -xf dbscripts.tar -C \extracted_dbscripts
``````

8. List all the apt packages installed in your system.
``````
apt list --installed
``````
9.  Update the apt list.
``````
sudo apt update
``````
10. Install Postgres in your system.
``````
sudo apt install postgresql
``````
11. Check if the Postgres service (postgres.service) is running (hit: use systemctl).
``````
systemctl status postgres.service
``````

12. Install the Postgres client.
``````
sudo apt install postgresql-cli
``````

13. Using the Postgres client (`psql`) connect to the Postgres server and list the databases. 
``````
sudo -u postgres psql
\lists
``````