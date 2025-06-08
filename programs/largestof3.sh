read -p "Enter 3 Numbers " a b c

if [ $a -gt $b ] && [ $a -gt $c ]
then
	echo $a "is largest"
elif [ $b -gt $c ]
then
	echo $b "is largest "
else
	echo $c "is largest"
fi
