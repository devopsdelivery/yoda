LAB 1

What is the user that you logged in?
whoami

Display your current directory.
pwd

Change to the /etc directory
cd /etc

Now change to your home directory using only 3 key presses.
cd 

Go to the parent directory of the current directory.
cd ..

Go to the root directory and list its content.
cd 
ll / ls

List a long listing of the root directory.
ll

Stay where you are, and list the contents of /etc.
ls /etc 

Stay where you are, and list the contents of /bin and /sbin.
ls /bin /sbin 

List all the files (including hidden files) in your home directory in a human readable format
ls -h

Create a directory linuxlab in your home directory
mkdir linuxlab

Change to the /etc directory, stay here and create a directory testlinuxdir in your home directory
cd /etc 
mkdir ~/testlinuxdir

Create in one command the directories hierarchy ~/dir1/dir2/dir3 inside the diretory textlinuxdir.
mkdir -p ~/textlinuxdir/dir1/dir2/dir3

Remove the directory testlinuxdir
rm -r testlinuxdir

----------------------------------------------------------------------------------------//-----------------------------------------------------------------------------------------------------------------------------------

Lab 2

1.wget https://github.com/devopsdelivery/yoda/blob/main/linux/files/postgres_users.sql

2.file postgres_users.sql 

3.du postgres_users.sql -h

4.mv ~/postgres_users.sql ~/linuxlabs

5.cp postgres_users.sql postgres_newusers.sql

6.mv postgres_newusers.sql postgres_oldusers.sql

7.touch today.txt yesterday.txt

8.touch -d "yesterday" yesterday.txt

9.cp yesterday.txt copy_yesterday.txt

10. mkdir ~/testebackup
cp ~/touched/* ~/testebackup/

11.rm -r ~/testebackup

12. mkdir ~/etcbackup
cp /etc/*.conf ~/etcbackup/

---------------------------------------------------------------------------------------//------------------------------------------------------------------------------------------------------------------------------------

Lab 3
Display the first 12 lines of /etc/services.
head -n 12 /etc/services

Display the last line of /etc/passwd.
tail -n 1 /etc/passwd

Create a file named count.txt.
touch count.txt

Use cp to make a backup of this file to cnt.txt.
cp count.txt cnt.txt

Use more to display /var/log/syslog
more /var/log/syslog

Use ls to find the two biggest file in /etc.
ls -S /etc | head -n 2

---------------------------------------------------------------------------------------//-----------------------------------------------------------------------------------------------------------------------------------

Lab 4 

List all files in /etc ending with “.conf”.
ls /etc/*.conf

List all commands in /bin starting with “mk”.
ls /bin/mk*

List all commands in /bin containing digits.
ls /bin/*[0-9]*

List all directories in /etc containing digits.
ls -d /etc/[0-9]/

List all files in /boot with name containing a dot (“.”) or a dash (“-”).
ls /boot/[.-]

-------------------------------------------------------------------------------------//-------------------------------------------------------------------------------------------------------------------------------------

Lab 5
Write the current date to the file /~/tmp/now (hint: use the date command)
date > /tmp/now

Copy the content of the file /etc/services to /~/tmp/services without using the commands “cp”, “mv” and “rm”.
cat /etc/services /tmp/services

Sort all /proc directory content by line, and filter output to only display lines beginning with a digit (hint: use grep ^[0-9] and sort(1)).
ls /proc | grep '^[0-9]' | sort

List the filesystem root directory / content by line, and filter output to replace all consonants with the character “_” (hint: use sed -e 's,[!aeiouy],_,g')
sed -e 's/[âeiouAEIOU]/ _/g'

-------------------------------------------------------------------------------------//-------------------------------------------------------------------------------------------------------------------------------------

Lab 6

In your home directory create the directory /linuxdatabase.
mkdir linuxdatabase/

Create the the file create_users_table.
touch ~/linuxdatabase/create_users_table.sql

Insert the content in the file create_table_users.sql into the file create_users_table (use the nano editor).
nano ~/create_table_users.sql
nano ~/create_users_table.sql
Ctrl + O

Create the the file insert_users_table.
touch ~/linuxdatabase/insert_users_table.sql

Insert the content in the file insert_table_users.sql into the file insert_users_table (use the nano editor).
nano ~/insert_table_users.sql
nano ~/insert_users_table.sql
Ctrl + O

Add the files create_users_table and insrt_users_table to a tar archive with the name dbscripts.tar.
tar -cvf dbscripts.tar ~/
create_users_table ~/
insert_users_table

Extract the files from the tar archive dbscripts.tar to the directory extracted_dbscripts.
mkdir ~extracted_dbcripts
tar -xvf dbscripsts.tar -C ~/extracted_dbscripts

List all the apt packages installed in your system.
dpkg --get-selections

Update the apt list.
sudo apt update

Install Postgres in your system.
sudo apt install postgresql

Check if the Postgres service (postgres.service) is running (hit: use systemctl).
sudo systemctl status postgresql-client

Install the Postgres client.
sudo apt install postgresql-client

Using the Postgres client (psql) connect to the Postgres server and list the databases.
psql -U postgres -I
