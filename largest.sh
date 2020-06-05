#!/bin/bash -x

for((i=1;i<=10;i++))
{
	digitRandom=$(( RANDOM%899 + 100 ))
	array[($i)]=$digitRandom

}

MAX=0
secondMax=0

MIN=1000
secondMin=1000

for((i=1;i<=10;i++))
{

	val=${array[$i]}

	if [ $val -gt $secondMax ]
	then
		secondMax=$val
		if [ $val -gt $MAX ]
		then
			secondMax=$MAX
			MAX=$val
		fi
	fi

	if [ $val -lt $secondMin ]
	then
		secondMin=$val
		if [ $val -lt $MIN ]
		then
			secondMin=$MIN
			MIN=$val
		fi
	fi


}


echo "${array[@]}"
echo "second MAX : $secondMax"
echo "second MIN : $secondMin"
