while true;do

echo "Enter first number "
read a
echo "Enter operation + - * / "
read op
echo "Enter second number "
read b

result=$(echo "$a $op $b" | bc -l)

echo "$a $op $b is $result"

echo "Do you want to continue y/n"
read ch

if [ "$ch" != "y" ]; then
echo "Exiting"
break
fi

done
