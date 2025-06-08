while true
do
	read -p "Enter 2 numbers " a b
	read -p "Enter the opeartion " op
	case $op in
		"+") ans=$((a+b))
		     echo $a" + "$b" = "$ans;;
		"-") ans=$((a-b))
	             echo $a" - "$b" = "$ans;;
		"*") ans=$((a*b))
	             echo $a" * "$b" = "$ans;;
		"/") ans=$((a/b))
	             echo $a" / "$b" = "$ans;;
		*) exit 1;;
	esac
done
