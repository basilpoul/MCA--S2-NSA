#!/bin/bash

read -p "ENter file name : " f1
f2="tempfile.txt"

awk '!seen[$0]++' $f1 > $f2 && mv $f2 $f1
echo "Duplicates removed"
cat $f1
