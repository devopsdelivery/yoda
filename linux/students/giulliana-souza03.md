# Linux basics LAB3

## Exercises

Do the next exercises per order.

1. Display the first 12 lines of `/etc/services`.
head -n 12 services

2. Display the last line of `/etc/passwd`.
tail -n 1 passwd

3. Create a file named `count.txt`.
touch count.txt

4. Use cp to make a backup of this file to `cnt.txt`. 
cp count.txt to cnt.txt

5. Use more to display `/var/log/syslog`
more /var/log/syslog

6. Use ls to find the two biggest file in `/etc`.
du -ah /etc | sort -rn | head -n 2


Next step: [Lab4](lab4.md)

