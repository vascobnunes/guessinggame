#!/usr/bin/env bash
# File: guessinggame.sh

count_of_files=$(ls | wc -l)
action="Please try again!"

while [[ $count_of_files -ne $response ]]
do
	echo "Type how many files you guess are in the current directory?"
	read response

	if [[ $response -gt $count_of_files ]]
	then	
		incorrect="too high"
	elif [[ $response -lt $count_of_files ]]
	then
		incorrect="too low"
	else
		incorrect="correct"
		action="Congratulations!"
	fi
	echo "You entered: $response, which is $incorrect! $action"
done

