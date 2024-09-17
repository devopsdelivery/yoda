***
LAB1
***
#**1. What is the user that you logged in?**

whoami

**2. Display your current directory.**

pwd

**3. Change to the /etc directory**

cd /etc

**4. Now change to your home directory using only 3 key presses.**

cd ( and enter)

**5. Go to the parent directory of the current directory.**

cd ..

**6. Go to the root directory and list its content.**

cd | ls

**7. List a long listing of the root directory.**

cd /root && ll

**8. Stay where you are, and list the contents of /etc.**

cd etc/ && ls -

**9. Stay where you are, and list the contents of /bin and /sbin.**

ls /bin && ls /sbin

**10. List all the files (including hidden files) in your home directory in a human readable format**

ls -ah ~/

**11. Create a directory linuxlab in your home directory**

mkdir ~/linuxlab

**12. Change to the /etc directory, stay here and create a directory testlinuxdir in your home directory**

cd /etc
mkdir ~/testlinuxdir

**13. Create in one command the directories hierarchy ~/dir1/dir2/dir3 inside the diretory textlinuxdir.**

mkdir -p ~/testlinuxdir/dir1/dir2/dir3

**14. Remove the directory testlinuxdir**

rm -f testlinuxdir

***
LAB2
***
***
LAB3
***
**1. Display the first 12 lines of /etc/services.**

 head -n 12 /etc/services

**2.Display the last line of /etc/passwd.**

tail -n 1 /etc/passwd

**3. Create a file named count.txt.**

touch count.txt

**4. Use cp to make a backup of this file to cnt.txt.**
   
cp count.txt ./cnt.txt

**5. Use more to display /var/log/syslog**
   
 more /var/log/syslog
 
**6.Use ls to find the two biggest file in /etc.**

ls -lhS /etc

***
LAB4
***
**1. List all files in /etc ending with “.conf”.**

ll -f /etc/*.conf

**2.List all commands in /bin starting with “mk”.**

ll /bin/mk*

**3.List all commands in /bin containing digits.**

ll /bin/\*[0-9]\*

**4.List all directories in /etc containing digits.**

ll -d /etc/\*[0-9]\*

5. List all files in /boot with name containing a dot (“.”) or a dash (“-”).

 ls -a /boot | grep '[.-]'

***
LAB5
***
**1.Write the current date to the file /~/tmp/now (hint: use the date command)**

date > /tmp/now

**2. Copy the content of the file /etc/services to /~/tmp/services without using the commands “cp”, “mv” and “rm”.**

cat /etc/services > /tmp/services

**3. Sort all /proc directory content by line, and filter output to only display lines beginning with a digit (hint: use grep ^[0-9] and sort(1)).**

ls /proc | grep '^[0-9]' | sort -V

**6. List the filesystem root directory / content by line, and filter output to replace all consonants with the character “_” (hint: use sed -e 's,[^aeiouy],_,g')**

ls / | sed -e 's,[^aeiouy],_,g'
***
LAB6
***
**1.In your home directory create the directory /linuxdatabase.**

mkdir linuxdatabase

**2. Create the the file create_users_table.**

touch create_users_table

**3.Insert the content in the file create_table_users.sql into the file create_users_table**

through VIM

**4.Create the the file insert_users_table.**

touch insert_users_table

**6. Add the files create_users_table and insrt_users_table to a tar archive with the name dbscripts.tar.
tar -cvf dbscripts.tar create_users_table insrt_users_table**

tar -cvf dbscripts.tar create_users_table insert_users_table


**7. Extract the files from the tar archive dbscripts.tar to the directory extracted_dbscripts.**

mkdir -p extracted_dbscripts && tar -xvf dbscripts.tar -C extracted_dbscripts

**8. List all the apt packages installed in your system.**

dpkg --list

**9.Update the apt list.**

sudo apt update

**10.Install Postgres in your system.**

apt update postgresql

**11.Check if the Postgres service (postgres.service) is running (hit: use systemctl).**

systemctl status postgresql
(must be super user)

**12. Install the Postgres client.**

sudo apt update (good practice before applying installation)

sudo apt install postgresql-client

sudo dnf install postgresql (red hat systems)

**13 Using the Postgres client (psql) connect to the Postgres server and list the databases.**

sudo -u postgres psql -c '\l'

