##--- LAB1 ---
1-What is the user that you logged in?
```
1-whoami
```
2-Display your current directory.
```
2-pdw
```
3-Change to the /etc directory
```
3-cd /etc
```
4-Now change to your home directory using only 3 key presses.
```
4-cd
```
5-Go to the parent directory of the current directory.
```
5-cd..
```
6-Go to the root directory and list its content.
```
6-cd && ls 
```
7-List a long listing of the root directory.
```
7-ls / -l
```
8-Stay where you are, and list the contents of /etc.
```
8-ls /etc
```
9-Stay where you are, and list the contents of /bin and /sbin.
```
9-ls /bin && ls /sbin
```
10-List all the files (including hidden files) in your home directory in a human readable format
```
10-ls -lha ~
```
11-Create a directory linuxlab in your home directory
```
11-cd && mkdir linuxlab
```
12-Change to the /etc directory, stay here and create a directory testlinuxdir in your home directory
```
12-mkdir ~/linuxlabteste
```
13-Create in one command the directories hierarchy ~/dir1/dir2/dir3 inside the diretory textlinuxdir.
```
13-mkdir -p ~/testlinuxdir/dir1/dir2/dir3
```
14-Remove the directory testlinuxdir
```
14-rm -r testlinuxdir
```



##--- LAB2 ---

1-Download the file postgres_users.sql (https://github.com/devopsdelivery/yoda/blob/main/linux/files/postgres_users.sql) with the command wget.
```
1-wget https://github.com/devopsdelivery/yoda/blob/main/linux/files/postgres_users.sql
```
2-Display the size and type of file of postgres_users.sql.
```
2-ls -lh postgres_users.sql
```
3-Display the type of file of postgres_users.sql.
```
3-file postgres_users.sql
```
4-Move the file postgres_users.sql to the directory /linuxlab.
```
4-mv postgres_users.sql /root/linuxlab/
```
5-Create a copy of the file postgres_users.sql with the name postgres_newusers.sql.
```
5-cp ~/linuxlab/postgres_users.sql ~/linuxlab/postgres_newusers.sql 
```
6-Rename the file postgres_newusers.sql to postgres_oldusers.sql.
```
6-mv ~/linuxlab/postgres_newusers.sql ~/linuxlab/postgres_oldusers.sql
```
7-Create a directory ~/touched and enter it.
```
7-mkdir ~/touched
```
8-Create the files today.txt and yesterday.txt in touched.
```
8-touch ~/today.txt && touch ~/yesterday.txt
```
9-Change the creation date on yesterday.txt to match yesterday's date.
```
9-touch -d "yesterday" yesterday.txt
```
10-Copy yesterday.txt to copy.yesterday.txt.
```
10-cp yesterday.txt copy.yesterday.txt 
```
11-Create a directory called ~/testbackup and copy all files from ~/touched in it.
```
11-mkdir -p  ~/testbackup && cp -rf  ~/touched/* ~/testbackup
```
12-Use one command to remove the directory ~/testbackup and all files in it.
```
12-rm -rf ~/testbackup/
```
13-Create a directory ~/etcbackup and copy all *.conf files from /etc in it. Did you include all subdirectories of /etc?
```
13-mkdir ~/etcbackup && cp /etc/*.conf ~/etcbackup
```


##--- LAB3 ---
1-Display the first 12 lines of /etc/services.
```
1-head -12 services
```
2-Display the last line of /etc/passwd.
```
2-tail -1 passwd
```
3-Create a file named count.txt.
```
3-touch count.txt
```
4-Use cp to make a backup of this file to cnt.txt.
```
4-cp count.txt cnt.txt
```
5-Use more to display /var/log/syslog
```
5-more /var/log/syslog
```
6-Use ls to find the two biggest file in /etc.
```
6-ls -lSh /etc | head -3
```



##--- LAB4 ---
1-List all files in /etc ending with “.conf”.
```
1-ls /etc/*conf
```
2-List all commands in /bin starting with “mk”.
```
2-ls /bin/mk*
```
3-List all commands in /bin containing digits.
```
3-ls /bin/*[0-9]*
```
4-List all directories in /etc containing digits.
```
4-ls -d /etc/*[0-9]*/
```
5-List all files in /boot with name containing a dot (“.”) or a dash (“-”).
```
5-ls /boot/*[.-]*
```

##--- LAB5 ---
1-Write the current date to the file /~/tmp/now (hint: use the date command)
```
1-date >> /root/tmp/now
```
2-Copy the content of the file /etc/services to /~/tmp/services without using the commands “cp”, “mv” and “rm”.
```
2-cat services > /root/tmp/services
```
3-Sort all /proc directory content by line, and filter output to only display lines beginning with a digit (hint: use grep ^[0-9] and sort(1)).
```
3-ls /proc/ | grep ^[0-9] |sort
```
4-List the filesystem root directory / content by line, and filter output to replace all consonants with the character “_” (hint: use sed -e 's,[!aeiouy],_,g')
```
4-ls /root/ | sed -e 's,[aeiouy],_,g'
```
