#!/bin/bash

echo "Welcome to my Calculator application"

echo "Enter two numbers"

read num1
read num2


echo "1. Addition"
echo "2. Subtraction"
echo "3. Division"
echo "4. Multiplication"

echo "Which operation would you like to perform on the two numbers"
read choice

if [ $choice = 1 ]; then
    result=$((num1 + num2))
    echo "The result of addition is: $result"

elif [ $choice = 2 ]; then       
    result=$((num2 - num1))
    echo "The result of ubtraction is: $result"

elif [ $choice = 3 ]; then 
    result=$((num2/num1))
    echo "The result of division is: $result"

elif [ choice eq 4]; then
    result=$((num1 * num2))
    echo "The result of multiplication is $result"

fi