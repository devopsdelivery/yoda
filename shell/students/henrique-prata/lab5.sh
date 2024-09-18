#! /bin/sh
for file in ../../../replacedir/*
do
  sed -e 's/ERROR/WARNING/g' "$file"
done
