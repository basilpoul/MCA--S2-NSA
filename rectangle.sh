echo "Rectangle calc"
read -p "Enter length of rectangle : " length
read -p "Enter breadth of rectangle : " breadth

area=$(echo "$length*$breadth" | bc)

perimeter=$(echo "2*($length+$breadth)" | bc)

echo "Area : $area"
echo "Perimeter : $perimeter"


