#!/bin/bash

read -p "Enter the string : " str
read -p "Enter starting index and number of characters : " a b
substr=${str:$a:$b}
echo "Sub string is $substr"
