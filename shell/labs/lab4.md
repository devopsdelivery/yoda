# Bash Scripting LAB4

## Exercise

Write a script that checks the disk usage of a system and prints the message:

"Warning: Disk usage is above $THRESHOLD. Current usage: $USAGE" if the disk usage exceeds 80%,

and the message: "Disk usage ok. Current usage: $USAGE" if the disk usage is below 80%.


#### TIP
```
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//')
```

Next setp: [Lab5](lab5.md)
