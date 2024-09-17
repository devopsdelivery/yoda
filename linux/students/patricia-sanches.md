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

List all commands in /bin starting with “mk”.

List all commands in /bin containing digits.

List all directories in /etc containing digits.

List all files in /boot with name containing a dot (“.”) or a dash (“-”).
