#!/bin/bash -x

echo "Enter a number : "
read num
count=0
for j in `seq 1 $num`
do
	if [ $[$num%$j] = 0 ]
	then
		array[(count++)]=$j
	fi
done
echo "${array[@]}"
