#!/bin/bash

for file in *.log; do

    sed -i 's/ERROR/WARNING/g' $file
done