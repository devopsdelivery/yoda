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

wget https://github.com/devopsdelivery/yoda/blob/main/linux/files/postgres_users.sql

2. Display the size and type of file of postgres_users.sql.

ubuntu $ ls -lh postgres_users.sql
-rw-r--r-- 1 root root 320K Sep 16 15:50 postgres_users.sql
ubuntu $ file postgres_users.sql
postgres_users.sql: HTML document, UTF-8 Unicode text, with very long lines

3.Display the type of file of postgres_users.sql.

ubuntu $ file postgres_users.sql
postgres_users.sql: HTML document, UTF-8 Unicode text, with very long lines

4. Move the file postgres_users.sql to the directory /linuxlab.

ubuntu $ mkdir linuxlab
ubuntu $ mv postgres_users.sql ~/linuxlab/
ubuntu $ ls
filesystem  linuxlab  snap

5.Create a copy of the file postgres_users.sql with the name postgres_newusers.sql.

ubuntu $ cd linuxlab/
ubuntu $ ll
total 328
drwxr-xr-x 2 root root   4096 Sep 16 15:54 ./
drwx------ 6 root root   4096 Sep 16 15:54 ../
-rw-r--r-- 1 root root 327629 Sep 16 15:50 postgres_users.sql
ubuntu $ cp postgres_users.sql postgres_newusers.sql
ubuntu $ ll
total 648
drwxr-xr-x 2 root root   4096 Sep 16 15:59 ./
drwx------ 6 root root   4096 Sep 16 15:54 ../
-rw-r--r-- 1 root root 327629 Sep 16 15:59 postgres_newusers.sql
-rw-r--r-- 1 root root 327629 Sep 16 15:50 postgres_users.sql
ubuntu $

6. Rename the file postgres_newusers.sql to postgres_oldusers.sql.

mv postgres_newusers.sql postgres_oldusers.sql
   
7.Create a directory ~/touched and enter it.

mkdir ~/touched
cd touched/

8. Create the files today.txt and yesterday.txt in touched.

   touch today.txt  yesterday.txt
ubuntu $ ll
total 8
drwxr-xr-x 2 root root 4096 Sep 16 16:12 ./
drwx------ 7 root root 4096 Sep 16 16:09 ../
-rw-r--r-- 1 root root    0 Sep 16 16:12 today.txt
-rw-r--r-- 1 root root    0 Sep 16 16:12 yesterday.txt
   
9. Change the creation date on yesterday.txt to match yesterday's date.

  touch -d "yesterday" yesterday.txt
    
10.Copy yesterday.txt to copy.yesterday.txt.

   cp yesterday.txt to copy.yesterday.txt

11.Create a directory called ~/testbackup and copy all files from ~/touched in it.

   mkdir ~/testbackup
   cp ~/youched/* -/testbackup/

12.Use one command to remove the directory ~/testbackup and all files in it.

  rm -r ~/testbackup

13.Create a directory ~/etcbackup and copy all *.conf files from /etc in it. Did you include all subdirectories of /etc?

 mkdir ~/etcbackup 
 cp/etc/*.conf ~/etcbackup 


#LAB 03

1. Display the first 12 lines of /etc/services.

 ubuntu $ cd /etc
 ubuntu $ head -n 12 services 

 obs.: ubuntu $ file services 
services: ASCII text
ubuntu $ man head 
ubuntu $ head services 

2. Display the last line of /etc/passwd.

 ubuntu $ pwd 
/etc
ubuntu $ tail -n 1 passwd
dnsmasq:x:113:65534:dnsmasq,,,:/var/lib/misc:/usr/sbin/nologin

3.Create a file named count.txt.

   ubuntu $  touch count.txt 

4. Use cp to make a backup of this file to cnt.txt.

   ubuntu $  cp count.txt cnt.txt
   
5.Use more to display /var/log/syslog

 ubuntu $  more /var/log/syslog

6. Use ls to find the two biggest file in /etc.

   ubuntu $ ls -S /etc | head -n 2

#LAB 04

1. List all files in /etc ending with “.conf”.

   ubuntu $ ls /etc/*.conf

2. List all commands in /bin starting with “mk”.

   ubuntu $ ls /bin/mk*
   
3. List all commands in /bin containing digits.

ubuntu $ ls /bin | grep [0-9]
addr2line
automat-visualize3
b2sum
base32
base64
......
   
4. List all directories in /etc containing digits.

ubuntu $ ls -d /etc/*[0-9]*/
/etc/X11/     /etc/iproute2/  /etc/polkit-1/   /etc/python3/  /etc/rc1.d/  /etc/rc3.d/  /etc/rc5.d/  /etc/udisks2/

5. List all files in /boot with name containing a dot (“.”) or a dash (“-”).
   
ubuntu $ ls /boot/*[.-]*
/boot/System.map-5.4.0-131-generic  /boot/initrd.img                    /boot/initrd.img.old             /boot/vmlinuz.old

#LAB 05

1. Write the current date to the file /~/tmp/now (hint: use the date command)

ubuntu $ date > now.txt
ubuntu $ nano now.txt
ubuntu $ cd 
ubuntu $ pwd
/root
ubuntu $ mkdir tmp
ubuntu $ date > now.txt
ubuntu $ nano now.txt 
ubuntu $ ls
filesystem  now.txt  snap  tmp  yoda
ubuntu $ mv now.txt tmp/now.txt
ubuntu $ ls
filesystem  snap  tmp  yoda
ubuntu $ cd tmp/
ubuntu $ ls
now.txt

2. Copy the content of the file /etc/services to /~/tmp/services without using the commands “cp”, “mv” and “rm”.

ubuntu $ pwd                 
/root/tmp
ubuntu $ cat /etc/services > services
ubuntu $ ls
now.txt  services
ubuntu $ nano services 
   
3. Sort all /proc directory content by line, and filter output to only display lines beginning with a digit (hint: use grep ^[0-9] and sort(1)).

ubuntu $ ls /proc | grep '^[0-9]' | sort

4. List the filesystem root directory / content by line, and filter output to replace all consonants with the character “_” (hint: use sed -e 's,[!aeiouy],_,g')

..................................

# LAB 06

1. In your home directory create the directory /linuxdatabase.

 mkdir ~/linuxdatabase
   
2. Create the the file create_users_table.

touch ~/create_users_table
   
3. Insert the content in the file create_table_users.sql into the file create_users_table (use the nano editor).

nano ~/create_users_table

4. Create the the file insert_users_table.

touch ~insert_users_table
   
5. Insert the content in the file insert_table_users.sql into the file insert_users_table (use the nano editor).

nano ~/insert_table_users.sql

6. Add the files create_users_table and insert_users_table to a tar archive with the name dbscripts.tar.

tar -cvf dbscripts.tar ~/create_users_table ~/insert_users_table

7. Extract the files from the tar archive dbscripts.tar to the directory extracted_dbscripts.

mkdir ~/extracted_dbscripts tar -xvf dbscripts.tar -c ~/extracted_dbscripts

8. List all the apt packages installed in your system.

dpkg --get-selections

9.Update the apt list.

sudo apt update

10.Install Postgres in your system.

sudo apt install postgresql

11.Check if the Postgres service (postgres.service) is running (hit: use systemctl).

sudo systemctl status postgresql

12.Install the Postgres client.

sudo apt install postgresql-client

13.Using the Postgres client (psql) connect to the Postgres server and list the databases.

psql -U postgres -l
