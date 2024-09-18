#!/bin/bash

current_date=$(date +'%Y-%m-%d')


git add .
git commit -m "Commit_$current_date"
git push -f
