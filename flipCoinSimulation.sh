#!/bin/bash -x

isHeads=1
isTails=0
countHeads=0
countTails=0
for(( i=1;i<=10;i++ ))
do
	flipCheck=$((RANDOM%2))
	if [ $flipCheck -eq $isHeads ]
	then
		countHeads=$((countHeads + 1))
	elif [ $flipCheck -eq $isTails ]
	then
                countTails=$((countTails + 1))
	fi
done

echo "Total Heads count is: $countHeads"
echo "Total Tails count is: $countTails"
