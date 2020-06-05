#!/bin/bash -x

declare -A dice
num1=0
num2=0
num3=0
num4=0
num5=0
num6=0

occurance=0
while (( $occurance !=1 ))
do
digit=$(( 1 + RANDOM%6 ))

case $digit in
		1) ((num1++))
			dice[one]=$num1;;
		2) ((num2++))
                        dice[two]=$num2;;
		3) ((num3++))
                        dice[three]=$num3;;
                4) ((num4++))
                        dice[four]=$num4;;
		5) ((num5++))
                        dice[five]=$num5;;
                6) ((num6++))
                        dice[six]=$num6;;
esac

if (( ($num1==10) || ($num2==10) || ($num3==10) || ($num4==10) || ($num5==10) || ($num6==10) ))
then
	occurance=1
fi
done

max=0
min=10
for key in ${!dice[@]}
do
	echo $key : ${dice[$key]}
if [ ${dice[$key]} -gt $max ]
then
	max=${dice[$key]}
	maxkey=$key
fi
if [[ ${dice[$key]} -lt $min ]]
then
	min=${dice[$key]}
	minkey=$key
fi
done
echo "Maximum repeated no. is: " $maxkey
echo "Minimum repeated no. is: " $minkey
