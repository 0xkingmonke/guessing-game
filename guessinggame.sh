#!/usr/bin/env bash

echo "A guessing game (for satisfying the requirements of the UNIX workbench course by Sean Kross of John Hopkins University - on Coursera)"

function ask {
	echo "Please enter a guess for the number of files in the current directory:"
	read guess
    files=$(ls -1 | wc -l)
}

ask

while [[ $guess -ne $files ]]
do
	if [[ $guess -lt $files ]] 
	then
		echo "Your guess was too low."
	else
		echo "Your guess was too high"
	fi
	ask
done

echo "Your guess was correct. Here are the list of files in the directory:"
echo "---" && ls -1