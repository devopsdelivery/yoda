## DBA Academy LABs

<details>
<summary style="font-size: 1.5em; font-weight: bold;">Exercises LAB1</summary>

1. What is the user that you logged in?
```
└─$ whoami
sopa
```

2. Display your current directory.
```
└─$ pwd
/home/sopa/yoda/linux/students
```

3. Change to the `/etc` directory
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~/yoda/linux/students]
└─$ cd /etc/

┌──(sopa㉿DESKTOP-MAPFS0I)-[/etc]
└─$ pwd
/etc
```

4. Now change to your home directory using only 3 key presses.
 ```
 ┌──(sopa㉿DESKTOP-MAPFS0I)-[/etc]
└─$ cd

┌──(sopa㉿DESKTOP-MAPFS0I)-[~]
└─$ pwd
/home/sopa
 ```

5. Go to the parent directory of the current directory.
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~]
└─$ pwd && cd .. ; pwd 
/home/sopa
/home
```

6. Go to the root directory and list its content.
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[/home]
└─$ ls -l /
```

7. List a long listing of the root directory.
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[/]
└─$ ls -la /
```

8. Stay where you are, and list the contents of `/etc`.
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[/]
└─$ ls -l /etc/
```

9. Stay where you are, and list the contents of `/bin` and `/sbin`.
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[/]
└─$ ls /bin/ && ls /sbin/
```

10. List all the files (including hidden files) in your home directory in a human readable format
```
ls -lha ~  # Tilde expands to the home directory
```

11. Create a directory `linuxlab` in your home directory
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~/yoda]
└─$ mkdir -p ~/linuxlab && ls ~ # -p 
linuxlab  yoda
```
12. Change to the `/etc` directory, stay here and create a directory `testlinuxdir` in your home directory
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[/etc]
└─$ cd /etc/ && mkdir -p ~/testlinuxdir ; ls ~
linuxlab  testlinuxdir  yoda
```

13. Create in one command the directories hierarchy ~/dir1/dir2/dir3 inside the diretory `textlinuxdir`. 
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[/etc]
└─$ mkdir ~/dir1/dir2/dir3 && tree ~/
/home/sopa/
├── dir1
│   └── dir2
│       └── dir3
```

14. Remove the directory `testlinuxdir`
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[/etc]
└─$ rm -rf ~/testlinuxdir && ls ~
dir1  linuxlab  yoda
```
</details>


<details>
<summary style="font-size: 1.5em; font-weight: bold;">Exercises LAB2</summary>

1. Download the file `postgres_users.sql` (https://github.com/devopsdelivery/yoda/blob/main/natixis-academy/linux/files/postgres_users.sql) with the command `wget`.
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~/yoda/linux/students]
└─$ wget "https://github.com/devopsdelivery/yoda/tree/jhon/linux/files/postgres_users.sql"
--2024-09-16 16:10:26--  https://github.com/devopsdelivery/yoda/tree/jhon/linux/files/postgres_users.sql
Resolving github.com (github.com)... 140.82.121.3
Connecting to github.com (github.com)|140.82.121.3|:443... connected.
HTTP request sent, awaiting response... 301 Moved Permanently
Location: https://github.com/devopsdelivery/yoda/blob/jhon/linux/files/postgres_users.sql [following]
--2024-09-16 16:10:27--  https://github.com/devopsdelivery/yoda/blob/jhon/linux/files/postgres_users.sql
Reusing existing connection to github.com:443.
HTTP request sent, awaiting response... 200 OK
Length: unspecified [text/html]
Saving to: ‘postgres_users.sql’

postgres_users.     [  <=>] 165.19K   625KB/s    in 0.3s    

2024-09-16 16:10:27 (625 KB/s) - ‘postgres_users.sql’ saved [169154]
```
2. Display the size and type of file of `postgres_users.sql`. 
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~/yoda/linux/students]
└─$ file postgres_users.sql && du -h postgres_users.sql 
postgres_users.sql: HTML document, Unicode text, UTF-8 text, with very long lines (1616)
168K    postgres_users.sql
```

3. Display the type of file of `postgres_users.sql`.
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~/yoda/linux/students]
└─$ file -b postgres_users.sql 
HTML document, Unicode text, UTF-8 text, with very long lines (1616)
```

4. Move the file `postgres_users.sql` to the directory `/linuxlab`.  
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~/yoda/linux/students]
└─$ mv postgres_users.sql ~/linuxlab
```

5. Create a copy of the file `postgres_users.sql` with the name `postgres_newusers.sql`.
```

┌──(sopa㉿DESKTOP-MAPFS0I)-[~/linuxlab]
└─$ cp postgres_users.sql postgres_newusers.sql
```
6. Rename the file `postgres_newusers.sql` to `postgres_oldusers.sql`.
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~/linuxlab]
└─$ mv postgres_newusers.sql postgres_oldusers.sql
```

7. Create a directory `~/touched` and enter it.
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~/linuxlab]
└─$ mkdir -p ~/touched && cd ~/touched && pwd
/home/sopa/touched
```

8. Create the files `today.txt` and `yesterday.txt` in `touched`.
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~/touched]
└─$ touch today.txt yesterday.txt && ls 
today.txt  yesterday.txt
```

9. Change the creation date on `yesterday.txt` to match yesterday's date.
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~/touched]
└─$ touch -t $(date -d "2024-09-15 00:00" +"%Y%m%d%H%M") yesterday.txt && ls -l yesterday.txt 
-rw-r--r-- 1 sopa sopa 0 Sep 15 00:00 yesterday.txt
```

10. Copy `yesterday.txt` to `copy.yesterday.txt`.
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~/touched]
└─$ cp yesterday.txt copy.yesterday.txt && ls *yes*
copy.yesterday.txt  yesterday.txt
```

11. Create a directory called `~/testbackup` and copy all files from `~/touched` into it.
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~]
└─$ mkdir -p ~/testbackup && cp -rf touched/* ~/testbackup && ls ~/testbackup
copy.yesterday.txt  today.txt  yesterday.txt
```

12. Use one command to remove the directory `~/testbackup` and all files in it.
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~]
└─$ rm -rf ~/testbackup && ls ~/testbackup
ls: cannot access '/home/sopa/testbackup': No such file or directory
```

13. Create a directory `~/etcbackup` and copy all *.conf files from `/etc` into it. Did you include all subdirectories of `/etc`?
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~]
└─$ mkdir -p ~/etcbackup && cp -rf /etc/*.conf ~/etcbackup

┌──(sopa㉿DESKTOP-MAPFS0I)-[~]
└─$ ls -la ~/etcbackup/
total 100
drwxr-xr-x  2 sopa sopa 4096 Sep 16 16:59 .
drwx------ 12 sopa sopa 4096 Sep 16 16:59 ..
-rw-r--r--  1 sopa sopa 3386 Sep 16 16:59 adduser.conf
-rw-r--r--  1 sopa sopa 6288 Sep 16 16:59 ca-certificates.conf
-rw-r--r--  1 sopa sopa 2967 Sep 16 16:59 debconf.conf
-rw-r--r--  1 sopa sopa 1706 Sep 16 16:59 deluser.conf
-rw-r--r--  1 sopa sopa  685 Sep 16 16:59 e2scrub.conf
-rw-r--r--  1 sopa sopa 2584 Sep 16 16:59 gai.conf
-rw-r--r--  1 sopa sopa    9 Sep 16 16:59 host.conf
-rw-r--r--  1 sopa sopa   34 Sep 16 16:59 ld.so.conf
-rw-r--r--  1 sopa sopa  191 Sep 16 16:59 libaudit.conf
-rw-r--r--  1 sopa sopa  494 Sep 16 16:59 logrotate.conf
-rw-r--r--  1 sopa sopa  813 Sep 16 16:59 mke2fs.conf
-rwxr-xr-x  1 sopa sopa  243 Sep 16 16:59 nftables.conf
-rw-r--r--  1 sopa sopa  494 Sep 16 16:59 nsswitch.conf
-rw-r--r--  1 sopa sopa  552 Sep 16 16:59 pam.conf
lrwxrwxrwx  1 sopa sopa   20 Sep 16 16:59 resolv.conf -> /mnt/wsl/resolv.conf
-rw-r--r--  1 sopa sopa 4343 Sep 16 16:59 sudo.conf
-rw-r--r--  1 sopa sopa 9804 Sep 16 16:59 sudo_logsrvd.conf
-rw-r--r--  1 sopa sopa 1260 Sep 16 16:59 ucf.conf
-rw-r--r--  1 sopa sopa  583 Sep 16 16:59 updatedb.conf
lrwxrwxrwx  1 sopa sopa   16 Sep 16 16:59 vconsole.conf -> default/keyboard
-rw-r--r--  1 sopa sopa  681 Sep 16 16:59 xattr.conf

```

</details>

<details>
<summary style="font-size: 1.5em; font-weight: bold;">Exercises LAB3</summary>

1. Display the first 12 lines of `/etc/services`.
```
└─$ head -n 12 /etc/services | nl
```

2. Display the last line of `/etc/passwd`.
```
└─$ tail -n 1 /etc/passwd
```

3. Create a file named `count.txt`.
```
└─$ touch count.txt
```

4. Use cp to make a backup of this file to `cnt.txt`. 
```
└─$ cp count.txt cnt.txt
&& diff count.txt cnt.txt # command to test it
```

5. Use more to display `/var/log/syslog`
```
└─$ more /var/log/syslog # */syslog does not exist here
```

6. Use ls to find the two biggest file in `/etc`.
```
└─$ ls -lS /etc/ | head -n 3 | tail -n 2
```

</details>

<details>
<summary style="font-size: 1.5em; font-weight: bold;">Exercises LAB4</summary>

1. List all files in `/etc` ending with “.conf”.
```
└─$ ls -a /etc/*.conf
```

2. List all commands in `/bin` starting with “mk”.
```
└─$ ls -a /bin/mk*
```

3. List all commands in `/bin` containing digits.
```
└─$ ls -a /bin/*[0-9]*
```

4. List all directories in `/etc` containing digits. 
```
└─$ ls -da /etc/*[0-9]*
```

5. List all files in `/boot` with name containing a dot (“.”) or a dash (“-”).
```
└─$ ls -a /boot/ | grep [.-]
```


</details>


<details>
<summary style="font-size: 1.5em; font-weight: bold;">Exercises LAB5</summary>

1. Write the current date to the file `/~/tmp/now` (hint: use the date command)
```
└─$ date > ~/tmp/now
```

2. Copy the content of the file `/etc/services` to `/~/tmp/services` without using the commands “cp”, “mv” and “rm”.
```
└─$ cat /etc/services > ~/tmp/services
```

3. Sort all `/proc` directory content by line, and filter output to only display lines beginning with a digit (hint: use `grep ^[0-9]` and sort(1)). 
```
ls /proc | sort | grep ^[0-9]
```

4. List the filesystem root directory `/` content by line, and filter output to replace all consonants with the character “_” (hint: use `sed -e 's,[!aeiouy],_,g'`)
```
└─$ ls / | sed -e 's,[^aeiouAEIOU],_,g'
```
</details>

<details>
<summary style="font-size: 1.5em; font-weight: bold;">Exercises LAB6</summary>

1. In your home directory create the directory `/linuxdatabase`.
```
└─$ mkdir ~/linuxdatabase
```

2. Create the the file `create_users_table`.
```
└─$ touch ~/linuxdatabase/create_users_table
```

3. Insert the content in the file [create_table_users.sql](/files/create_table_users.sql) into the file `create_users_table`.
```
└─$ cat ~/yoda/linux/files/insert_table_users.sql > ~/linuxdatabase/create_users_table
```

4. Create the the file `insert_users_table`.
```
```

5. Insert the content in the file [insert_table_users.sql](/files/create_table_users.sql) into the file `insert_users_table` (use the nano editor).
```
└─$ cp ~/yoda/linux/files/create_table_users.sql ~/linuxdatabase/insert_users_table
```

6. Add the files `create_users_table` and `insrt_users_table` to a tar archive with the name `dbscripts.tar`. 
```
┌──(sopa㉿DESKTOP-MAPFS0I)-[~/linuxdatabase]
└─$ tar -cf dbscripts.tar  *users_table*

┌──(sopa㉿DESKTOP-MAPFS0I)-[~/linuxdatabase]
└─$ tar -tf dbscripts.tar 
create_users_table
insert_users_table

┌──(sopa㉿DESKTOP-MAPFS0I)-[~/linuxdatabase]
└─$ 

```

7. Extract the files from the tar archive `dbscripts.tar` to the directory `extracted_dbscripts`.
```
└─$ tar -xf dbscripts.tar  
```

8. List all the apt packages installed in your system.
```
└─$ dpkg --list
```

9. Update the apt list.
```
└─$ sudo apt update
```

10. Install Postgres in your system.
```
└─$ sudo apt install postgresql -y
```

11. Check if the Postgres service (postgres.service) is running (hit: use systemctl).
```
└─$ systemctl status postgresql.service
postgresql.service - PostgreSQL RDBMS
    Loaded: loaded (/usr/lib/systemd/system/postgresql.service, disabled)
    Active: inactive (dead)
```

12. Install the Postgres client.
```
└─$ sudo apt install postgresql-client -y
```

13. Using the Postgres client (`psql`) connect to the Postgres server and list the databases. 
```
└─$ sudo service postgresql start && sudo service postgresql status
Starting PostgreSQL 16 database server: main.
16/main (port 5432): online


┌──(sopa㉿DESKTOP-MAPFS0I)-[~/yoda]
└─$ sudo -u postgres psql

postgres=# \list
                                                   List of databases
   Name    |  Owner   | Encoding | Locale Provider | Collate |  Ctype  | ICU Locale | ICU Rules |   Access privileges   
-----------+----------+----------+-----------------+---------+---------+------------+-----------+-----------------------
 postgres  | postgres | UTF8     | libc            | C.UTF-8 | C.UTF-8 |            |           | 
 template0 | postgres | UTF8     | libc            | C.UTF-8 | C.UTF-8 |            |           | =c/postgres          +
           |          |          |                 |         |         |            |           | postgres=CTc/postgres
 template1 | postgres | UTF8     | libc            | C.UTF-8 | C.UTF-8 |            |           | =c/postgres          +
           |          |          |                 |         |         |            |           | postgres=CTc/postgres
(3 rows)

```
</details>
