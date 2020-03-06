#!/bin/bash -x

echo "Welcome Flip Coin Simulator UC 1"

coinFlip=$((RANDOM%2))
if [ $coinFlip -eq 0 ]
then
	echo "Head"
else
	echo "Tail"
fi
echo $coinFlip
