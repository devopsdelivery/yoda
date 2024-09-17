Your README file should have the formar: FirsName_LastName.md

##--- LAB1 ---

1. What is the user that you logged in?
```
$ whoami
goncalo
``` 
2. Display your current directory.
```
$ pwd
/home/goncalo/yoda2/linux/students
```
3. Change to the /etc directory
```
cd etc
goncalo@DESKTOP-0HE064:/etc$ pwd
/etc
```

4. Now change to your home directory using only 3 key presses.
```
goncalo@DESKTOP-0HE064V:/etc$ cd
goncalo@DESKTOP-0HE064V:~$ pwd
/home/goncalo
```

5. Go to the parent directory of the current directory.
```
goncalo@DESKTOP-0HE064V:~$ pwd
/home/goncalo
goncalo@DESKTOP-0HE064V:~$ cd ..
goncalo@DESKTOP-0HE064V:/home$ pwd
/home
```

6. Go to the root directory and list its content.
```
goncalo@DESKTOP-0HE064V:/$ cd / && ls
bin   dev  home  lib    lib64   lost+found  mnt  proc  run   snap  sys  usr
boot  etc  init  lib32  libx32  media       opt  root  sbin  srv   tmp  var
```
7. List a long listing of the root directory.
```
goncalo@DESKTOP-0HE064V:/$ ls -l

```

8. Stay where you are, and list the contents of /etc.
```
goncalo@DESKTOP-0HE064V:/$ ls /etc

```
9. Stay where you are, and list the contents of /bin and /sbin.
```
goncalo@DESKTOP-0HE064V:/$ ls /bin && ls /sbin
```

10. List all the files (including hidden files) in your home directory in a human readable format
```
goncalo@DESKTOP-0HE064V:/$ ls -lha
```

11. Create a directory linuxlab in your home directory
```
goncalo@DESKTOP-0HE064V:~$ mkdir linuxlab
goncalo@DESKTOP-0HE064V:~$ cd linuxlab/
goncalo@DESKTOP-0HE064V:~/linuxlab$ pwd
/home/goncalo/linuxlab
goncalo@DESKTOP-0HE064V:~/linuxlab$
```

12. Change to the /etc directory, stay here and create a directory testlinuxdir in your home directory
```
goncalo@DESKTOP-0HE064V:/etc$ cd /etc/ && mkdir -p ~/testlinuxdir && ls ~
linuxlab  testlinuxdir  yoda  yoda2
```

13. Create in one command the directories hierarchy ~/dir1/dir2/dir3 inside the diretory textlinuxdir.
```
goncalo@DESKTOP-0HE064V:/etc$ mkdir -p ~/dir1/dir2/dir3
```

14. Remove the directory testlinuxdir
```
goncalo@DESKTOP-0HE064V:/etc$ rmdir ~/testlinuxdir/
```


## --- LAB2 ---

1. Download the file postgres_users.sql (https://github.com/devopsdelivery/yoda/blob/natixis-academy/linux/files/postgres_users.sql) with the command wget.
```
goncalo@DESKTOP-0HE064V:~/yoda/linux/students$ wget "https://github.com/devopsdelivery/yoda/tree/main/linux/files/postgres_users.sql"
--2024-09-16 16:17:48--  https://github.com/devopsdelivery/yoda/tree/main/linux/files/postgres_users.sql
Resolving github.com (github.com)... 140.82.121.3
Connecting to github.com (github.com)|140.82.121.3|:443... connected.
HTTP request sent, awaiting response... 301 Moved Permanently
Location: https://github.com/devopsdelivery/yoda/blob/main/linux/files/postgres_users.sql [following]
--2024-09-16 16:17:48--  https://github.com/devopsdelivery/yoda/blob/main/linux/files/postgres_users.sql
Reusing existing connection to github.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘postgres_users.sql’

postgres_users.sql                [  <=>                                          ] 165.15K   766KB/s    in 0.2s

2024-09-16 16:17:49 (766 KB/s) - ‘postgres_users.sql’ saved [169115]
```

2. Display the size and type of file of postgres_users.sql.
```
goncalo@DESKTOP-0HE064V:~/yoda/linux/students$ file postgres_users.sql && du -h postgres_users.sql
postgres_users.sql: HTML document, Unicode text, UTF-8 text, with very long lines (1616)
168K    postgres_users.sql
```
3. Display the type of file of postgres_users.sql.
```
goncalo@DESKTOP-0HE064V:~/yoda/linux/students$ file postgres_users.sql && du -h postgres_users.sql
postgres_users.sql: HTML document, Unicode text, UTF-8 text, with very long lines (1616)
```

4. Move the file postgres_users.sql to the directory /linuxlab.
```
goncalo@DESKTOP-0HE064V:~/yoda/linux/students$ mv postgres_users.sql ~/linuxlab/
goncalo@DESKTOP-0HE064V:~/yoda/linux/students$ cd
goncalo@DESKTOP-0HE064V:~$ cd linuxlab/
goncalo@DESKTOP-0HE064V:~/linuxlab$ ls
postgres_users.sql
```

5. Create a copy of the file postgres_users.sql with the name postgres_newusers.sql.
```
goncalo@DESKTOP-0HE064V:~/linuxlab$ cp postgres_users.sql postgres_newusers.sql
goncalo@DESKTOP-0HE064V:~/linuxlab$ ls
postgres_newusers.sql  postgres_users.sql
```
6. Rename the file postgres_newusers.sql to postgres_oldusers.sql.
```
goncalo@DESKTOP-0HE064V:~/linuxlab$ mv postgres_newusers.sql postgres_oldusers.sql
goncalo@DESKTOP-0HE064V:~/linuxlab$ ls
postgres_oldusers.sql  postgres_users.sql
```

7. Create a directory ~/touched and enter it.
```
goncalo@DESKTOP-0HE064V:~/touched$ mkdir -p ~/touched/ && cd ~/touched/
goncalo@DESKTOP-0HE064V:~/touched$
```

8. Create the files today.txt and yesterday.txt in touched.
```
goncalo@DESKTOP-0HE064V:~/touched$ touch today.txt && touch yesterday.txt
goncalo@DESKTOP-0HE064V:~/touched$ ls
today.txt  yesterday.txt
```

9. Change the creation date on yesterday.txt to match yesterday's date.
```
goncalo@DESKTOP-0HE064V:~/touched$ touch -t 202409150000 yesterday.txt
goncalo@DESKTOP-0HE064V:~/touched$ ls -la yesterday.txt
-rw-r--r-- 1 goncalo goncalo 0 Sep 15 00:00 yesterday.txt
```

10. Copy yesterday.txt to copy.yesterday.txt.
```
goncalo@DESKTOP-0HE064V:~/touched$ cp yesterday.txt copy.yesterday.txt
goncalo@DESKTOP-0HE064V:~/touched$ ls
copy.yesterday.txt  today.txt  yesterday.txt
```

11. Create a directory called ~/testbackup and copy all files from ~/touched in it.
```
goncalo@DESKTOP-0HE064V:~$ mkdir -p ~/testbackup && cp -rf ~/touched/* ~/testbackup
goncalo@DESKTOP-0HE064V:~$ ls testbackup/
copy.yesterday.txt  today.txt  yesterday.txt
```

12. Use one command to remove the directory ~/testbackup and all files in it.
```
goncalo@DESKTOP-0HE064V:~$ rm -rf testbackup/
```

13. Create a directory ~/etcbackup and copy all *.conf files from /etc in it. Did you include all subdirectories of /etc?
```
goncalo@DESKTOP-0HE064V:/etc$ mkdir -p ~/etcbackup && cp /etc/*.conf ~/etcbackup/
goncalo@DESKTOP-0HE064V:~$ cd etcbackup/
goncalo@DESKTOP-0HE064V:~/etcbackup$ ls
adduser.conf          e2scrub.conf  host.conf       mke2fs.conf    resolv.conf        sysctl.conf
ca-certificates.conf  fuse.conf     ld.so.conf      nftables.conf  rsyslog.conf       ucf.conf
debconf.conf          gai.conf      libaudit.conf   nsswitch.conf  sudo.conf          wsl.conf
deluser.conf          hdparm.conf   logrotate.conf  pam.conf       sudo_logsrvd.conf  xattr.conf
```


## --- LAB3 ---

1. Display the first 12 lines of /etc/services.
```
goncalo@DESKTOP-0HE064V:/etc$ head -n 12 /etc/services | nl
```

2. Display the last line of /etc/passwd..
```
goncalo@DESKTOP-0HE064V:/etc$ tail -n 1 passwd
```

3. Create a file named count.txt.
```
goncalo@DESKTOP-0HE064V:/etc$ touch ~/count.txt
```

4. Use cp to make a backup of this file to cnt.txt.
```
goncalo@DESKTOP-0HE064V:/etc$ cp ~/count.txt ~/cnt.txt && diff ~/count.txt ~/cnt.txt
```

5. Use more to display /var/log/syslog
```
goncalo@DESKTOP-0HE064V:~$ more /var/log/syslog
```

6. Use ls to find the two biggest file in /etc.
```
goncalo@DESKTOP-0HE064V:~$ ls -lS /etc/ | head -n 3
```


## --- LAB4 ---

1. List all files in /etc ending with “.conf”.
```
goncalo@DESKTOP-0HE064V:~$ ls -lha /etc/*.conf
-rw-r--r-- 1 root root 3.0K Nov 22  2023 /etc/adduser.conf
-rw-r--r-- 1 root root 6.2K Nov 22  2023 /etc/ca-certificates.conf
-rw-r--r-- 1 root root 2.9K Feb 20  2022 /etc/debconf.conf
-rw-r--r-- 1 root root  604 Sep 15  2018 /etc/deluser.conf
...
```

2. List all commands in /bin starting with “mk”.
```
goncalo@DESKTOP-0HE064V:~$ ls -lha /bin/mk*
-rwxr-xr-x 1 root root  16K Dec 16  2022 /bin/mk_modmap
-rwxr-xr-x 1 root root  67K Feb  7  2022 /bin/mkdir
-rwxr-xr-x 1 root root  39K Feb  7  2022 /bin/mkfifo
-rwxr-xr-x 1 root root  43K Feb  7  2022 /bin/mknod
-rwxr-xr-x 1 root root 255K Mar 25  2022 /bin/mksquashfs
-rwxr-xr-x 1 root root  39K Feb  7  2022 /bin/mktemp
```

3. List all commands in /bin containing digits.
```
goncalo@DESKTOP-0HE064V:~$ ls /bin/*[0-9]*
```

4. List all directories in /etc containing digits.
```
goncalo@DESKTOP-0HE064V:~$ ls -la /bin/*[0-9]*
```

5. List all files in /boot with name containing a dot (“.”) or a dash (“-”).
```
goncalo@DESKTOP-0HE064V:~$ la -a /boot/ | grep [.-]
```


## --- LAB5 ---


1. Write the current date to the file /~/tmp/now (hint: use the date command)
```
goncalo@DESKTOP-0HE064V:~/linuxdatabase$ date > ~/tmp/now
```

2. Copy the content of the file /etc/services to /~/tmp/services without using the commands “cp”, “mv” and “rm”.
```
goncalo@DESKTOP-0HE064V:~/ cat /etc/services > ~/tmp/services
```

3. Sort all /proc directory content by line, and filter output to only display lines beginning with a digit (hint: use grep ^[0-9] and sort(1)).
```
goncalo@DESKTOP-0HE064V:~/linuxdatabase$ ls -a /proc | sort | grep ^[0-9]
```

4. List the filesystem root directory / content by line, and filter output to replace all consonants with the character “_” (hint: use sed -e 's,[!aeiouy],_,g')
```
goncalo@DESKTOP-0HE064V:~/tmp$ ls / | sed -e 's,[^aeiouAEIOU],_,g'
_i_
_oo_
_e_
...
## DISCLAIMER (WE WANT ONLY THE VOWELS SO THE CORRECT COMMAND IS [^aeiouAEIOU]
```


## --- LAB6 ---

1. In your home directory create the directory /linuxdatabase.
```
goncalo@DESKTOP-0HE064V:~/tmp$ mkdir ~/linuxdatabase
```

2. Create the the file create_users_table.
```
goncalo@DESKTOP-0HE064V:~/tmp$ touch ~/linuxdatabase/create_users_table
```

3. Insert the content in the file create_table_users.sql into the file create_users_table (use the nano editor).
```
goncalo@DESKTOP-0HE064V:~/yoda/linux/files$ cp create_table_users.sql ~/linuxdatabase/create_users_table
```

4. Create the the file insert_users_table.
```
goncalo@DESKTOP-0HE064V:~/linuxdatabase$ touch ~/linuxdatabase/insert_users_table
```

5. Insert the content in the file insert_table_users.sql into the file insert_users_table (use the nano editor).
```
goncalo@DESKTOP-0HE064V:~/yoda/linux/files$ cp insert_table_users.sql ~/linuxdatabase/insert_users_table
```

6. Add the files create_users_table and insrt_users_table to a tar archive with the name dbscripts.tar.
```
goncalo@DESKTOP-0HE064V:~/linuxdatabase$ tar -cf ~/linuxdatabase/dbscripts.tar ~/linuxdatabase/create_users_table ~/linuxdatabase/insert_users_table
```

7. Extract the files from the tar archive dbscripts.tar to the directory extracted_dbscripts.
```
goncalo@DESKTOP-0HE064V:~/linuxdatabase$ tar -xf dbscripts.tar
```

8. List all the apt packages installed in your system.
```
goncalo@DESKTOP-0HE064V:~/linuxdatabase$ dpkg --list
```

9. Update the apt list.
```
goncalo@DESKTOP-0HE064V:~/linuxdatabase$ sudo apt update
[sudo] password for goncalo:
Hit:1 http://archive.ubuntu.com/ubuntu jammy InRelease
Get:2 http://security.ubuntu.com/ubuntu jammy-security InRelease [129 kB]
Get:3 http://archive.ubuntu.com/ubuntu jammy-updates InRelease [128 kB]
...
```

10. Install Postgres in your system.
```
goncalo@DESKTOP-0HE064V:~/linuxdatabase$ sudo apt install postgresql postgresql-contrib
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
...
```

11. Check if the Postgres service (postgres.service) is running (hit: use systemctl).
```
goncalo@DESKTOP-0HE064V:~/linuxdatabase$ sudo systemctl status postgresql
● postgresql.service - PostgreSQL RDBMS
     Loaded: loaded (/lib/systemd/system/postgresql.service; enabled; vendor preset: enabled)
     Active: active (exited) since Tue 2024-09-17 11:11:19 BST; 1min 33s ago
    Process: 4336 ExecStart=/bin/true (code=exited, status=0/SUCCESS)
   Main PID: 4336 (code=exited, status=0/SUCCESS)
...
```

12. Install the Postgres client.
```
goncalo@DESKTOP-0HE064V:~/linuxdatabase$ sudo apt install postgresql-client
Reading package lists... Done
Building dependency tree... Done
Reading state information... Done
...
```

13. Using the Postgres client (psql) connect to the Postgres server and list the databases.
```
goncalo@DESKTOP-0HE064V:~/linuxdatabase$ sudo -u postgres psql
could not change directory to "/home/goncalo/linuxdatabase": Permission denied
psql (14.13 (Ubuntu 14.13-0ubuntu0.22.04.1))
Type "help" for help.

postgres=# \list
                              List of databases
   Name    |  Owner   | Encoding | Collate |  Ctype  |   Access privileges
-----------+----------+----------+---------+---------+-----------------------
 postgres  | postgres | UTF8     | C.UTF-8 | C.UTF-8 |
 template0 | postgres | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +
           |          |          |         |         | postgres=CTc/postgres
 template1 | postgres | UTF8     | C.UTF-8 | C.UTF-8 | =c/postgres          +
           |          |          |         |         | postgres=CTc/postgres
(3 rows)
```


