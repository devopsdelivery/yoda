# Linux basics LAB2

## Exercises

Do the next exercises per order.

1. Download the file `postgres_users.sql` (https://github.com/devopsdelivery/yoda/blob/natixis-academy/linux/files/postgres_users.sql) with the command `wget`.
wget https://github.com/devopsdelivery/yoda/blob/main/linux/files/postgres_users.sql

2. Display the size and type of file of `postgres_users.sql`. 
du -h postgres_users.sql 
file postgres_users.sql

3. Display the type of file of `postgres_users.sql`.
file postgres_users.sql

4. Move the file `postgres_users.sql` to the directory `/linuxlab`.  
mv postgres_users.sql linuxlab/

5. Create a copy of the file `postgres_users.sql` with the name `postgres_newusers.sql`.
cp postgres_users.sql postgres_newusers.sql

6. Rename the file `postgres_newusers.sql` to `postgres_oldusers.sql`.
mv postgres_newusers.sql postgres_oldusers.sql

7. Create a directory `~/touched` and enter it.
mkdir ~/touched

8. Create the files `today.txt` and `yesterday.txt` in touched.
touch today.txt yesterday.txt

9. Change the creation date on `yesterday.txt` to match yesterday's date.
touch -a -m -t 202409161649.00 fileName.ext

10. Copy `yesterday.txt` to `copy.yesterday.txt`.
cp yesterday.txt copy.yesterday.txt

11. Create a directory called `~/testbackup` and copy all files from `~/touched` in it.
mkdir ~/testbackup
cp * ~/testbackup
	
12. Use one command to remove the directory `~/testbackup` and all files in it.
rm -r ~/testbackup
	
13. Create a directory `~/etcbackup` and copy all *.conf files from `/etc` in it. Did you include all subdirectories of `/etc`?
cp -a /etc ~/etcbackup
	
	

Next step: [Lab3](lab3.md)
