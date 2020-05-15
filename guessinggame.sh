#!/bin/bash
clear
dfcount=`ls|wc -l`
guessfiles()
{
	echo -n "Guess,how many files are in the current directory: "
	read fcount
	if [ $fcount -eq $dfcount ]
	then
		echo "Congrats, Guessing is correct"
		exit 0
	elif [ $fcount -le $dfcount ]
	then
		echo "Try again, Guessing count is lessthan Actual count"
	elif [ $fcount -gt $dfcount ]
	then
		echo "Try again, Guessing count is greaterthan Actual count"
	fi
}
while true
do
	guessfiles
done
