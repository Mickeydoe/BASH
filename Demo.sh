#!/bin/bash

echo "What is your name?"
read name

echo "How old are you?"
read age

if ! [[ "$age" =~ ^[0-9]+$ ]]; then
    echo "Invalid age input. Please enter a valid positive integer."
    exit 1
fi

echo "How many times would you like to be greeted?"
read greet_time

if ! [[ "$greet_time" =~ ^[0-9]+$ ]]; then
    echo "Invalid greet time input. Please enter a valid positive integer."
    exit 1
fi

message="Hello $name"

for ((i=1; i<=$greet_time; i++))
do 
    echo "$message"
done

if [ "$age" -gt 18 ]; then
    echo "You can vote"
elif [ "$age" -lt 18 ]; then
    echo "You are not eligible to vote"
else
    if [ "$age" -le 0 ]; then
        echo "Invalid age figure"
    fi
fi
