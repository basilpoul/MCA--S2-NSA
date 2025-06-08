#!/bin/bash

gcd() {
    local a=$1
    local b=$2
    while [ $b -ne 0 ]; do
        temp=$b
        b=$((a % b))
        a=$temp
    done
    echo $a
}

lcm() {
    local a=$1
    local b=$2
    local gcd_result=$(gcd $a $b)
    echo $(( (a * b) / gcd_result ))
}

read -p "Enter first number: " num1
read -p "Enter second number: " num2

gcd_result=$(gcd $num1 $num2)
lcm_result=$(lcm $num1 $num2)

echo "GCD of $num1 and $num2 is: $gcd_result"
echo "LCM of $num1 and $num2 is: $lcm_result"
