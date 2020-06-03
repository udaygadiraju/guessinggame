#!/bin/bash
clear
dfcount=`ls -a|wc -l`
guessfilecount()
{
	echo -n "Guess,how many files are in the current directory: "
	read gcount

	if ! [[ "$gcount" =~ ^[0-9]+$ ]]
	then
		echo "Please try to provide only integers"

	elif [ $gcount -eq $dfcount ]
	then
		echo "Congrats, Guessing is correct"
		exit 0
	elif [ $gcount -le $dfcount ]
	then
		echo "Try again, Guessing count is lessthan Actual count"
	elif [ $gcount -gt $dfcount ]
	then
		echo "Try again, Guessing count is greaterthan Actual count"
	fi
}
while true
do
	guessfilecount
done
