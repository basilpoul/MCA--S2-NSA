i="Y"
read -p  "Enter name of database : " db

while [ $i = "Y" ]
do
clear
echo "1. View Database"
echo "2. View Specific Record"
echo "3. Add Record"
echo "4. Delete Record"
echo "5. Exit"
read -p "Enter your choice : " ch

case $ch in
	1) cat $db;;
	3)read -p  "Enter id : " tid
	  read -p  "Enter name : " tname
	  read -p  "Enter designation : " desig
	  read -p  "Enter salary : " sal
	  echo "$tid $tname $desig $sal">>$db;;
	4)read -p "Enter id of record" id
	  grep -v $id $db > dbs1
	  echo "Record Deleted"
	  mv dbs1 $db;;
	2)read -p "Enter id of record" id
	  grep -i $id $db;;
	5)exit ;;
	*)echo "Enter a valid option"
esac

read -p "Do you want to continue Y/N : " i
if [ $i != "Y" ]
then
exit
fi

done
