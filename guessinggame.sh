#!/usr/bin/env Bash
# File: guessinggame.sh

function getfilenum {
	for filenums in $(ls -A | wc -l)
	do
		echo $filenums
	done
}

function guessinggame {
	local fsum=$(getfilenum $@)
	echo "There are $fsum files in this current directory. Delete me; this is just a check."
	echo "Welcome to the Guessing Game. Guess how many files are in the current directory."
	read guess

	while [[ $guess != $fsum ]]
	do
		if [[ $guess -gt $fsum ]]
		then
			echo "Sorry, that guess is too high. Guess again."
			read guess
		elif [[ $guess -lt $fsum ]]
		then
			echo "Sorry, that guess is too low. Guess again."
			read guess
		fi
	done

	if [[ $guess =~ $fsum ]]
	then
		echo "Congratulations, you guessed correctly. Program complete."
		exit 0
	fi
}
guessinggame
