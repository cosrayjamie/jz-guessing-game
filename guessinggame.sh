#!/usr/bin/env Bash
# File: guessinggame.sh

function getfilenum { 
	for filenums in $(find . \( ! -regex '.*/\..*' \) -type f | wc -l) #excludes hidden files
	do
		echo $filenums #returns number of files in directory
	done
}

function guessinggame {
	local fsum=$(getfilenum $@)
	echo "Welcome to the Guessing Game. Guess how many files are in the current directory."
	read guess

	while [[ $guess != $fsum ]] #Loops if guess is wrong.
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

	if [[ $guess =~ $fsum ]] #If guess is correct, program ends.
	then
		echo "Congratulations, you guessed correctly. Program complete."
		exit 0
	fi
}
guessinggame #calls function guessinggame to initiate program, which in turn calls function getfilenum.
