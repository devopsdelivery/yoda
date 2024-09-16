# OLGA CADAVEZ

#LAB01

1.What is the user that you logged in?

ubuntu $ whoami
root

2.Display your current directory.

ubuntu $ pwd
/root/yoda/linux/students

3.Change to the /etc directory

ubuntu $ cd /etc

ubuntu $ pwd -> para verificar seestou no directório etc
/etc

4.Now change to your home directory using only 3 key presses.

ubuntu $ cd
ubuntu $ pwd
/root


5.Go to the parent directory of the current directory.

ubuntu $ cd ..
ubuntu $ pwd
/

6.Go to the root directory and list its content.

ubuntu $ cd
ubuntu $ ls
filesystem  snap  yoda

7.List a long listing of the root directory.

ubuntu $ ll
total 48
drwx------  7 root root 4096 Sep 16 13:50 ./
drwxr-xr-x 19 root root 4096 Sep  9 12:33 ../
-rw-------  1 root root   20 Nov 13  2022 .bash_history
-rw-r--r--  1 root root 3208 Sep  9 12:33 .bashrc
-rw-r--r--  1 root root   59 Sep 16 13:50 .gitconfig
drwxr-xr-x  3 root root 4096 Sep 16 13:47 .local/
-rw-r--r--  1 root root  161 Dec  5  2019 .profile
drwx------  2 root root 4096 Sep  9 12:31 .ssh/
drwxr-xr-x  4 root root 4096 Sep 16 13:38 .theia/
-rw-r--r--  1 root root  109 Sep  9 12:33 .vimrc
lrwxrwxrwx  1 root root    1 Sep  9 12:33 filesystem -> //
drwx------  3 root root 4096 Sep 16 13:26 snap/
drwxr-xr-x  6 root root 4096 Sep 16 13:43 yoda/

8. Stay where you are, and list the contents of /etc.

ubuntu $ cd /etc
ubuntu $ pwd
/etc
ubuntu $ ls -l
total 864
drwxr-xr-x 3 root root       4096 Nov  7  2022 ModemManager
drwxr-xr-x 4 root root       4096 Sep  9 12:31 NetworkManager
drwxr-xr-x 2 root root       4096 Nov  7  2022 PackageKit
drwxr-xr-x 4 root root       4096 Nov 
................


10. Stay where you are, and list the contents of /bin and /sbin.

ubuntu $ ls /bin /sbin


10.List all the files (including hidden files) in your home directory in a human readable format

ls -h

11.Create a directory linuxlab in your home directory

mkdir linuxlab

12.Change to the /etc directory, stay here and create a directory testlinuxdir in your home directory

cd /etc
mkdir ~/textlinuxdir

13.Create in one command the directories hierarchy ~/dir1/dir2/dir3 inside the diretory textlinuxdir.

$ mkdir -p ~/textlinuxdir/dir1/dir2/dir3
ubuntu $ cd textlinuxdir/
ubuntu $ cd dir1/
ubuntu $ ll
ubuntu $ cd dir2/
ubuntu $ ll

14.Remove the directory testlinuxdir

rm -r textlinuxdir



#LAB02


1. Download the file postgres_users.sql (https://github.com/devopsdelivery/yoda/blob/natixis-academy/linux/files/postgres_users.sql) with the command wget.
Display the size and type of file of postgres_users.sql.
Display the type of file of postgres_users.sql.
Move the file postgres_users.sql to the directory /linuxlab.
Create a copy of the file postgres_users.sql with the name postgres_newusers.sql.
Rename the file postgres_newusers.sql to postgres_oldusers.sql.
Create a directory ~/touched and enter it.
Create the files today.txt and yesterday.txt in touched.
Change the creation date on yesterday.txt to match yesterday's date.
Copy yesterday.txt to copy.yesterday.txt.
Create a directory called ~/testbackup and copy all files from ~/touched in it.
Use one command to remove the directory ~/testbackup and all files in it.
Create a directory ~/etcbackup and copy all *.conf files from /etc in it. Did you include all subdirectories of /etc?
