#!/usr/bin/env bash
# File: guessinggame.sh

function evaluate_response {
action="Please try again!"
if [[ $1 -gt $2 ]]
then
	evaluation="too high"
elif [[ $1 -lt $2 ]]
then
	evaluation="too low"
else
	evaluation="correct"
	action="Congratulations!"
fi
echo "$evaluation! $action" 
}

count_of_files=$(ls | wc -l)
while [[ $count_of_files -ne $response ]]
do
	echo "Type how many files you guess are in the current directory?"
	read response
	echo "You entered: $response, which is $(evaluate_response $response $count_of_files)"
done

