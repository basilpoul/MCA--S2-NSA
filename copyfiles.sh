read -p "Enter file name : " f1
echo "Enter contents"
cat > $f1
read -p "Enter existing file name : " f2
cat $f1 >> $f2
echo "Displaing contents of $f2"
cat $f2
