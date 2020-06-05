count=0
integer[(count++)]="0"
integer[(count++)]="-1"
integer[(count++)]="2"
integer[(count++)]="-3"
integer[(count++)]="1"

echo "Array : " ${integer[@]}
size=${#integer[@]}

for (( i=0; i<$size-2; i++ ))
do
for (( j=i+1; j<$size-1; j++ ))
do
for (( k=j+1; k<$size; k++ ))
do
if [[ ${integer[i]}+${integer[j]}+${integer[k]} -eq 0 ]]
then
echo "Triplets are : " [ ${integer[i]} " " ${integer[j]} " " ${integer[k]} ]
fi
done
done
done
