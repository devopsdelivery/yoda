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


