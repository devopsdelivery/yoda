#!/bin/bash

current_date=$(date + "%y-%m-%d")


git add .
git commit -m "Commit $current_date"
git push -f
