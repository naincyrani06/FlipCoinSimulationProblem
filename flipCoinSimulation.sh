#!/bin/bash -x

isHeads=1
isTails=0
countHead=0
countTail=0
winning=0
for((i=1;i<=70;i++))
do
        flipCheck=$((RANDOM%2))
        if [ $flipCheck -eq $isHead ]
        then
                countHead=$((countHead + 1))
        elif [ $flipCheck -eq $isTail ]
        then
                countTail=$((countTail + 1))
        fi

	if [ $countHead -eq 21 ]
	then
		echo "Head count is:$countHead"
		echo "Tail count is:$countTail"
		break
	elif [ $countTail -eq 21 ]
        then
		echo "Head count is:$countHead"
                echo "Tail count is:$countTail"
		break

	elif [[ $countHead -eq 20 && $countTail -eq 20 ]]
	then
		flipCheck1=$((RANDOM%2))
		if [ $flipCheck1 -eq $isHead ]
        	then
                	countHead=$((countHead + 1))
			winningHead=$((countHead-countTail))
			while [ $winningHead -ne 2 ]
			do
                        	countHead=$((countHead + 1))
				winningHead=$((countHead-countTail))
			done
        	elif [ $flipCheck1 -eq $isTail ]
        	then
                	countTail=$((countTail + 1))
			winnigTail=$((countTail-countHead))
			while [ $winningTail -ne 2 ]
			do
                        	countTail=$((countTail + 1))
                        	winningTail=$((countTail-countHead))
			done
        	fi
		if [[  $winningHead -eq 2 || $winningHead -eq 2 ]]
		then
			break
		fi
        fi
done

echo "Total Number of head count is:$countHead"
echo "Total Number of tail count is:$countTail"
