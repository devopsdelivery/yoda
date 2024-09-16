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


## Exercises LAB2

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
