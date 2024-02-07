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

if [ $choice eq 1 ] then
    read dirname
    mkdir $dirname