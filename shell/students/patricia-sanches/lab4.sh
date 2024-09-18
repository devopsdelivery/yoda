place=$(pwd) 

echo "What is the threshold?" 
read threshold 

usage=$(df --output=pcent "$place" | tail -n 1 | tr -d '%') 

if [ "$usage" -lt "$threshold" ]; 
then echo "Disk usage ok. Current usage: $usage%." 

else echo "Warning! Disk usage is above $threshold%. Current usage: $usage%."
fi
