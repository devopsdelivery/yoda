1 - whoami 
2 - pwd
3 - cd /etc 
cd
cd ..
cd   / ls
ls -l
ls /etc
ls /bin /sbin
ls-h
mkdir /linuxlab
cd /etc mkdir ~/testlinuxdir
mkdir -p ~/textlinuxdir/~/dir1/dir2/dir3
rm -r ~/testlinuxdir




LAB 2:
wget https://github.com/devopsdelivery/yoda/blob/main/linux/files/postgres_users.sql

ubuntu $ ls -lh postgres_users.sql 
-rw-r--r-- 1 root root 166K Sep 16 15:30 postgres_users.sql
ubuntu $ file postgres_users.sql
postgres_users.sql: HTML document, UTF-8 Unicode text, with very long lines
ubuntu $ 

file postgres_users.sql

mv postgres_users.sql ~/linuxlab/

cp ~/linuxlab/postgres_users.sql
linuxlab/postgres_newusers.sql

mkdir ~/touched
cd ~/touched

touch today.txt yesterday.txt

touch -d "yesterday" yesterday.txt

cp yesterday.text copy_yesterday.txt

mkdir ~/testbackup
cp ~/touched/ ~/testbackup

rm -r ~/testbackup

mkdir ~/etcbackup 
