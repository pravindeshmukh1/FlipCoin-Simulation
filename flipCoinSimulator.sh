#!/bin/bash -x
declare -A coinDict

echo "Welcome Flip Coin Simulator"

read -p "Enter the number of Flipping Coin" noOfFlip
choice=1

		for ((i=1; i<=$noOfFlip; i++))
		do
			for ((j=1; j<=$choice; j++))
			do
	        ht=""
                        checkCoin=$((RANDOM%2))
                        if [ $checkCoin -eq 0 ]
                        then
                                ht+="Heads"
                        else
                                ht+="Tails"
                        fi
			done
	coinDict[$ht]=$((${coinDict[$ht]}+1))
	done

echo "-key-" ${!coinDict[@]}
echo "-value-" ${coinDict[@]}
 for  i in ${!coinDict[@]}
	do
		coinDict[$i]=$((${coinDict[$i]}*100/$noOfFlip))
	done
echo "Percentage of Singlet Combination" ${coinDict[@]}

