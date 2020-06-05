#!/bin/bash -x

remainder=0
index=0
reversenumber=0

for (( num=10; num<=100; num++ ))
do
	if [ $num -gt 10 ]
	then
	reversenumber=0
	n=$num
	fi

	while [[ $n -ne 0 ]]
	do
	remainder=$(( $n%10 ))
	n=$(( $n/10 ))
	reversenumber=$(((reversenumber*10)+remainder))
	done

	if [ $num -eq $reversenumber ]
	then
		digit[$index]=$num
		index=`expr $index+1`
	fi
done

echo "Twice digit number = " [${digit[@]}]
