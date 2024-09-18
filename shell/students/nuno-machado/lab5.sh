#!/bin/bash

dir=~/replacedir

sed -i 's/ERROR/WARNING/g' "$dir/replace1.log" "$dir/replace2.log"

echo "Replacement complete."
