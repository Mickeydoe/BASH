#!/bin/bash

echo "Menu System"
echo "1. Add a new record"
echo "2. Edit existing records"
echo "3. Search Records"
echo "4. Generate Reports"
echo "5. Exit"

echo "Enter a choice(1-5): "
read choice

if [ "$choice" == "1" ]; then
	echo "Adding a new record"
	echo "What is the new record name"
	read rec_name
	mkdir "$rec_name"
	cd "$rec_name"
elif [ "$choice" == "2" ]; then
	echo "Editing records"
	echo "What records do you want to edit"
	read edit_record
	cd "$edit_record"
elif [ "$choice" == "3" ]; then
	echo "Search Records"
	echo "Enter record name to search"
	read search_record
	find . -type d -name "*$search_record*" 2>/dev/null
elif [ "$choice" == "4" ]; then
	echo "Generating reports"
	echo "What report do you want"
	read report_name
else
	echo "Exiting"
fi
