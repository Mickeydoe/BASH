#!/bin/bash

echo "Hi, Please tell us your name"
read name

echo "Welcome $name"

echo "How old are you?"
read age

echo "You are $age years old"

if [ $age -ge 18 ]; then 
	echo "You can vote"
else
	echo "You are not eligible to vote"
fi
