#!/bin/bash

echo "Enter a word"
read word1

echo "Enter another word"
read word2

if [ "$word1" = "$word2" ]; then
	echo "You enter the same words"
else
	echo "Two different words"
fi


echo "Enter a number"
read number

if [ $number -ge 18 ] && [ $number -lt 30 ]; then
	echo "You are in the number range"
else
	echo "You are not in the range"
fi



echo "What is your exam score?"
read score

if [ $score -ge 80 ]; then
	echo "Grade A"
elif [ $score -ge 60 ]; then
	echo "Grade B"
else
	echo "Grade C"
fi
