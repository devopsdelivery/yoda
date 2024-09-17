# Linux basics LAB5

## Exercises

Do the next exercises per order.

1. Write the current date to the file `/~/tmp/now` (hint: use the date command)
date > /tmp/now


2. Copy the content of the file `/etc/services` to `/~/tmp/services` without using the commands “cp”, “mv” and “rm”.
cat /etc/services > ./services

3. Sort all `/proc` directory content by line, and filter output to only display lines beginning with a digit (hint: use `grep ^[0-9]` and sort(1)). 
ls /proc | grep ^[0-9] | sort

4. List the filesystem root directory `/` content by line, and filter output to replace all consonants with the character “_” (hint: use `sed -e 's,[!aeiouy],_,g'`)
ls / | sed -e 's,[!aeiouy],_,g'

Next step: [Lab6](lab6.md)