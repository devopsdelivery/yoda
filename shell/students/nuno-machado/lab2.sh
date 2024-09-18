#!/bin/bash

if [ $# -ne 3 ]; then
    echo "Error: Provide exactly 3 numbers."
    exit 1
fi

for i in 1 2 3; do
    num=${!i}
    if [ $((num % 2)) -eq 0 ]; then
        echo "This number $i is even"
    else
        echo "This number $i is odd"
    fi
done
