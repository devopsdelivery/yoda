#!bin/bash

$place =$(pwd)
echo "What is the threshold?"
read threshold

usage = $(df -h $place)

if threshold < usage
echo "Disk usage ok. Current usage: $usage ."
else 
echo "Warning! Disk usage is above $threshold. Current usage:$usage" 
