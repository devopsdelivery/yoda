# Linux basics LAB0 - Instructions

Welcome to the Linux basics laboratory.

## Instructions

In order to register your steps and answers to the different exercises that are part of the Linux laboratories:
1. Clone this repository to your laptop

```
git clone git@github.com:devopsdelivery/yoda.git
```

2. Create a new branch from `main`with your name: 
```
git checkout -b firstname-lastname 
```

3. In the folder `/linux/students`create amakedownfile with your name: `FirstName-LastName.md`

4. Use this file to register all the work
```
git add .
git commit -m "a verty nice message"
git push
```

5. Let's start with the exercises: [Lab1](lab1.md)
# Linux basics LAB1

Welcome to the Linux basics laboratory. We prepared some exercises to improve your Linux knowledge.

## Exercises

Do the next exercises per order.

1. What is the user that you logged in?
2. Display your current directory.
3. Change to the `/etc` directory
4. Now change to your home directory using only 3 key presses.
5. Go to the parent directory of the current directory.
6. Go to the root directory and list its content.
7. List a long listing of the root directory.
8. Stay where you are, and list the contents of `/etc`.
9. Stay where you are, and list the contents of `/bin` and `/sbin`.
10. List all the files (including hidden files) in your home directory in a human readable format
11. Create a directory `linuxlab` in your home directory
12. Change to the `/etc` directory, stay here and create a directory `testlinuxdir` in your home directory
13. Create in one command the directories hierarchy ~/dir1/dir2/dir3 inside the diretory `textlinuxdir`. 
14. Remove the directory `testlinuxdir`

Next step: [Lab2](lab2.md)
# Linux basics LAB2

## Exercises

Do the next exercises per order.

1. Download the file `postgres_users.sql` (https://github.com/devopsdelivery/yoda/blob/natixis-academy/linux/files/postgres_users.sql) with the command `wget`.
2. Display the size and type of file of `postgres_users.sql`. 
3. Display the type of file of `postgres_users.sql`.
4. Move the file `postgres_users.sql` to the directory `/linuxlab`.  
5. Create a copy of the file `postgres_users.sql` with the name `postgres_newusers.sql`.
6. Rename the file `postgres_newusers.sql` to `postgres_oldusers.sql`.
7. Create a directory `~/touched` and enter it.
8. Create the files `today.txt` and `yesterday.txt` in touched.
9. Change the creation date on `yesterday.txt` to match yesterday's date.
10. Copy `yesterday.txt` to `copy.yesterday.txt`.
11. Create a directory called `~/testbackup` and copy all files from `~/touched` in it.
12. Use one command to remove the directory `~/testbackup` and all files in it.
13. Create a directory `~/etcbackup` and copy all *.conf files from `/etc` in it. Did you include all subdirectories of `/etc`?

Next step: [Lab3](lab3.md)
# Linux basics LAB3

## Exercises

Do the next exercises per order.

1. Display the first 12 lines of `/etc/services`.
2. Display the last line of `/etc/passwd`.
3. Create a file named `count.txt`.
4. Use cp to make a backup of this file to `cnt.txt`. 
5. Use more to display `/var/log/syslog`
6. Use ls to find the two biggest file in `/etc`.

Next step: [Lab4](lab4.md)

# Linux basics LAB4

## Exercises

Do the next exercises per order.

1. List all files in `/etc` ending with “.conf”.
2. List all commands in `/bin` starting with “mk”.
3. List all commands in `/bin` containing digits.
4. List all directories in `/etc` containing digits. 
5. List all files in `/boot` with name containing a dot (“.”) or a dash (“-”).

Next step: [Lab5](lab5.md)# Linux basics LAB5

## Exercises

Do the next exercises per order.

1. Write the current date to the file `/~/tmp/now` (hint: use the date command)
2. Copy the content of the file `/etc/services` to `/~/tmp/services` without using the commands “cp”, “mv” and “rm”.
3. Sort all `/proc` directory content by line, and filter output to only display lines beginning with a digit (hint: use `grep ^[0-9]` and sort(1)). 
4. List the filesystem root directory `/` content by line, and filter output to replace all consonants with the character “_” (hint: use `sed -e 's,[!aeiouy],_,g'`)


Next step: [Lab6](lab6.md)# Linux basics LAB6

## Exercises

Do the next exercises per order.

1. In your home directory create the directory `/linuxdatabase`.
2. Create the the file `create_users_table`.
3. Insert the content in the file [create_table_users.sql](/files/create_table_users.sql) into the file `create_users_table` (use the nano editor).
4. Create the the file `insert_users_table`.
5. Insert the content in the file [insert_table_users.sql](/files/create_table_users.sql) into the file `insert_users_table` (use the nano editor).
6. Add the files `create_users_table` and `insrt_users_table` to a tar archive with the name `dbscripts.tar`. 
7. Extract the files from the tar archive `dbscripts.tar` to the directory `extracted_dbscripts`.
8. List all the apt packages installed in your system.
9. Update the apt list.
10. Install Postgres in your system.
11. Check if the Postgres service (postgres.service) is running (hit: use systemctl).
12. Install the Postgres client.
13. Using the Postgres client (`psql`) connect to the Postgres server and list the databases. 


**THE END**
