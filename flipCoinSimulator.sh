#!/bin/bash -x
declare -A coinDict

echo "Welcome Flip Coin Simulator"

function filpCoin() {
declare -A coinDict
	noOfFlip=$1
	choice=$2
	for ((i=1; i<=$noOfFlip; i++))
	do
		ht=""
		for ((j=1; j<=$choice; j++))
		do
			checkCoin=$((RANDOM%2))
	      if [ $checkCoin -eq 0 ]
   	   then
				ht+="H"
			else
				ht+="T"
			fi
		done
	coinDict[$ht]=$((${coinDict[$ht]}+1))
	done
percentage
}

function percentage() {
for  i in ${!coinDict[@]}
do
	coinDict[$i]=$(echo "scale=2;${coinDict[$i]}/$noOfFlip*100" | bc )
done
	echo "Percentage of Singlet Combination" ${coinDict[@]}
}

read -p "do you want to flip coin Y/N : " input

	while [[ $input -eq "Y" && $input -eq "y" ]]
	do
		read -p "Enter the number of flip : " noOfFlip
		echo -e "\n1.single \n2.double"
		read -p "Enter your Choice : " choice
		if [[ $choice -eq 1 || $choice -eq 2  ]]
		then
			filpCoin $noOfFlip $choice
		fi
	done
