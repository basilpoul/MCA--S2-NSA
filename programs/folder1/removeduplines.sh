read -p "Enter file name " fname

awk '!seen[$0]++' $fname > temp && mv temp $fname
echo "Duplicates Removed"
