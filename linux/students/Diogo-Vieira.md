---------------------------------------------------------------------------------------------------------------------
LAB1
---------------------------------------------------------------------------------------------------------------------
1. What is the user that you logged in?

whoami

2. Display your current directory.

pwd

3. Change to the /etc directory

cd /etc

4. Now change to your home directory using only 3 key presses.

cd ( and enter)

5. Go to the parent directory of the current directory.

cd ..

6. Go to the root directory and list its content.

cd | ls

7. List a long listing of the root directory.

cd /root && ll

8. Stay where you are, and list the contents of /etc.

cd etc/ && ls -

9. Stay where you are, and list the contents of /bin and /sbin.

ls /bin && ls /sbin

10. List all the files (including hidden files) in your home directory in a human readable format

ls -ah ~/

11. Create a directory linuxlab in your home directory

mkdir ~/linuxlab

12. Change to the /etc directory, stay here and create a directory testlinuxdir in your home directory

cd /etc
mkdir ~/testlinuxdir

13. Create in one command the directories hierarchy ~/dir1/dir2/dir3 inside the diretory textlinuxdir.

mkdir -p ~/testlinuxdir/dir1/dir2/dir3

14. Remove the directory testlinuxdir

rm -f testlinuxdir

---------------------------------------------------------------------------------------------------------------------
LAB2
---------------------------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------------------------
LAB3
---------------------------------------------------------------------------------------------------------------------
1. Display the first 12 lines of /etc/services.

 head -n 12 /etc/services

2.Display the last line of /etc/passwd.

tail -n 1 /etc/passwd

3. Create a file named count.txt.

touch count.txt

4. Use cp to make a backup of this file to cnt.txt.
   
cp count.txt ./cnt.txt

5. Use more to display /var/log/syslog
   
 more /var/log/syslog
 
6.Use ls to find the two biggest file in /etc.

ls -lhS /etc

---------------------------------------------------------------------------------------------------------------------
LAB4
---------------------------------------------------------------------------------------------------------------------


