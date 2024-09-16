
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
