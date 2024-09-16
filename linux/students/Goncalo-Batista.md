Your README file should have the formar: FirsName_LastName.md


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
