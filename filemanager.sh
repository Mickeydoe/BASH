#!/bin/bash

echo "Welcome to File Manager"

echo "Choose what to do from the list"

echo "1. Create a new directory"
echo "2. Delete an existing directory"
echo "3. List the contents of directory"
echo "4. Change into a directory"
echo "5. Creata new file"
echo "6. Write to an existing file"
echo "7. Read from an existing file"
echo "8. Delete an existing file"
echo "9. Exit"

echo "Indicate what you want to do"
read choice

if [ $choice = 1 ]; then
    read dirname
    mkdir $dirname
else
    if [ $choice = 2 ]; then
    read -p "Enter the directory to delete: " dirname
    rm -rf $dirname
else   
    if [ $choice = 3 ]; then 
    read -p "Enter the directory content you want to list: " dirname
    ls $dirname
else
    if [ $choice = 4 ]; then
    read -p "Enter the directory you want to change into: " dirname
    cd $dirname
else
    if [ $choice = 5]; then
    read -p "Enter name you want to give to file: " filename
    touch $filename
else 
    if [ $choice = 6]; then
    read -p "Enter  file you want to write to: " filename
    nano $filename
else 
    if [ $choice = 7 ]; then
    read -p "Enter file to read from: " filename
    cat $filename
else 
    if [ $choice = 8 ]; then 
    read -p "Enter the file to delete: " filename
    rm $filename
else
    if [ $choice = 9 ]; then
    echo "Exiting"


fi