#!/bin/bash -x
declare -A birthday

count=0
people=50

while (( $count < $people ))
do
	month=$(( RANDOM%12 +1 ))
	person[count++]=${month}
done
count=0
while (( ${person[count]} ))
do
	month=${person[count]}
	case $month in
		1) ((jan++))
			birthday[jan]=$jan;;
		2) ((feb++))
			birthday[feb]=$feb;;
		3) ((march++))
                        birthday[march]=$march;;
                4) ((april++))
                        birthday[april]=$april;;
		5) ((may++))
                        birthday[may]=$may;;
                6) ((june++))
                        birthday[june]=$june;;
                7) ((july++))
                        birthday[july]=$july;;
                8) ((august++))
                        birthday[august]=$august;;
		9) ((sept++))
                        birthday[sept]=$sept;;
                10) ((oct++))
                        birthday[oct]=$oct;;
                11) ((nov++))
                        birthday[nov]=$nov;;
                12) ((dec++))
                        birthday[dec]=$dec;;
	esac
	((count++))
done
echo "Number of person who shares common birth month in year 92 : "
for key in ${!birthday[@]}
do
	echo $key : ${birthday[$key]}
done
