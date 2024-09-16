## Exercises LAB1

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
