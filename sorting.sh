#!/bin/bash -x

count=0
max=10
size=0

while (( $count < $max ))
do
	number[$count]=$(( RANDOM%899 +100 ))
	((count++))
done
echo ${numbr[@]}
size=${#number[@]}

max=${number[0]}
secondmax=${number[0]}
min=${number[0]}
secondmini=${number[0]}

for (( i=0; i<size; i++ ))
do
	if [ ${number[i]} -gt $max ]
	then
	secondmax=$max
	max=${number[i]}

	elif [ ${number[i]} -gt $secondmax ]
	then
	secondmax=${number[i]}
	fi
done

for (( j=0; j<size; j++ ))
do
	if [ ${number[j]} -lt $min ]
	then
	secondmini=$min
	min=${number[j]}

	elif [ ${number[j]} -lt $secondmini ]
	then
	secondmini=${number[j]}
	fi
done

echo "Second Maximum no. is : " $secondmax
echo "Second Minimum no. is : " $secondmini
