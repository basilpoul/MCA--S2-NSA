read -p "Enter name of folder : " dir
if [ -d $dir ]
then
files=$( find $dir -type f | ls -l $dir | wc -l)
echo "There are $files files in $dir"
else
echo "$dir is not a folder"
fi
