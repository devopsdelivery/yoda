# Linux basics LAB1

Welcome to the Linux basics laboratory. We prepared some exercises to improve your Linux knowledge.

## Exercises

Do the next exercises per order.

1. What is the user that you logged in?
```
ubuntu $ whoami
root
```
2. Display your current directory.
```
ubuntu $ pwd
/root
```

3. Change to the `/etc` directory
```
cd /etc
```
4. Now change to your home directory using only 3 key presses.
```
cd ~
```
5. Go to the parent directory of the current directory.
```
cd ..
```
6. Go to the root directory and list its content.
```
cd /
ls
```
7. List a long listing of the root directory.
```
ls -l
```
8. Stay where you are, and list the contents of `/etc`.
```
ls /etc
```
9. Stay where you are, and list the contents of `/bin` and `/sbin`.
```
ls /bin/ && ls /sbin
```
10. List all the files (including hidden files) in your home directory in a human readable format
```
ls -lah
```
11. Create a directory `linuxlab` in your home directory
```
mkdir ~/linuxlab
```
12. Change to the `/etc` directory, stay here and create a directory `testlinuxdir` in your home directory
```
cd /etc
mkdir ~/testlinuxdir
```

13. Create in one command the directories hierarchy ~/dir1/dir2/dir3 inside the diretory `textlinuxdir`. 
```
cd/etc
mkdir -p ~/testlinuxdir/dir1/dir2/dir3
```

14. Remove the directory `testlinuxdir`

```
rmdir ~/testlinuxdir/
```

# Linux basics LAB2

## Exercises

Do the next exercises per order.

1. Download the file `postgres_users.sql` (https://github.com/devopsdelivery/yoda/blob/erica/linux/files/postgres_users.sql) with the command `wget`.

2. Display the size and type of file of `postgres_users.sql`. 
```
command to display the size of the file- du -h postgres_user.sql
command to display the type of the file- file postgres_user.sql 
```

3. Display the type of file of `postgres_users.sql`.
```
command to display the type of the file- file postgres_user.sql 
```

4. Move the file `postgres_users.sql` to the directory `/linuxlab`. 
```
mv postgres_users.sql ~/linuxlab
``` 

5. Create a copy of the file `postgres_users.sql` with the name `postgres_newusers.sql`.

```
cp postgres_user.sql postgres_newusers.sql
``` 
6. Rename the file `postgres_newusers.sql` to `postgres_oldusers.sql`.

```
mv postgres_newusers.sql postgres_oldusers.sql
``` 

7. Create a directory `~/touched` and enter it.
```
mkdir ~/touched
``` 
8. Create the files `today.txt` and `yesterday.txt` in touched.

```
touch today.txt yesterday.txt && ls today.txt yesterday.txt
``` 

9. Change the creation date on `yesterday.txt` to match yesterday's date.
``` 
touch -t 202409150000 yesterday.txt 
``` 
10. Copy `yesterday.txt` to `copy.yesterday.txt`.

``` 
cp yesterday.txt copy.yesterday.txt
``` 
11. Create a directory called `~/testbackup` and copy all files from `~/touched` in it.

``` 
mkdir ~/testbackup && cp -r ~/touched/* ~/testbackup
``` 
12. Use one command to remove the directory `~/testbackup` and all files in it.

``` 
rm -rf ~/testbackup
``` 
13. Create a directory `~/etcbackup` and copy all *.conf files from `/etc` in it. Did you include all subdirectories of `/etc`?

``` 
mkdir ~/etcbackup && cp /etc/*.conf ~/etcbackup
``` 
