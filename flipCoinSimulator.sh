#!/bin/bash -x
declare -A coinDict

echo "Welcome Flip Coin Simulator"

read -p "Enter the number of Flipping Coin" noOfFlip
echo "/n1.single /n2.double /n3.thiree"
read choice
filpCoin $noOfFlip $choice


function filpCoin() {
	for ((i=1; i<=$noOfFlip; i++))
	do
		for ((j=1; j<=$choice; j++))
		do
		ht=""
		checkCoin=$((RANDOM%2))
	      if [ $checkCoin -eq 0 ]
   	   then
				ht+="H"
			else
				ht+="T"
			fi
		done
		#coinDict[$ht]=$((${coinDict[$ht]}+1))
		coinDt $ht
	done
percentage
}
echo "-key-" ${!coinDict[@]}
echo "-value-" ${coinDict[@]}

function coinDt() {
		coinDict[$ht]=$((${coinDict[$ht]}+1))
echo "-key-" ${!coinDict[@]}
echo "-value-" ${coinDict[@]}

}
function percentage() {
for  i in ${!coinDict[@]}
do
#	coinDict[$i]=$((${coinDict[$i]}/$noOfFlip*100))
	echo "coinDict[$i]=$(echo "scale=2;${coinDict[$i]}/$noOfFlip*100" | bc )"
done
}
echo "Percentage of Singlet Combination" ${coinDict[@]}


echo "-key-" ${!coinDict[@]}
echo "-value-" ${coinDict[@]}

