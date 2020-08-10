#!/bin/bash -x

flipCheck=$((RANDOM%2))

isHeads=1

echo "Flip Value: "$flipCheck

if [ $flipCheck == $isHeads ]
then
	echo "Head is Winner"
else
	echo "Tail is Winner"
fi
