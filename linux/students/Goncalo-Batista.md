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
