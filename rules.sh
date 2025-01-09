#! /bin/bash

display_rules () {

	echo
	echo "The rules are as follows:"
	echo "1) Players select a square to mark with their respective icon"
	echo "2) Players cannot select a square that has already been marked"
	echo "3) Players cannot select a square that is not valid"
	echo "4) The first player to mark 3 squares in a row wins!"
	echo "5) If all squares have been filled without 3 in a row, the game ends in a draw"
	echo
	read -p "Begin game? Yes/No: " begin
	case $begin in 
		Yes | yes)
			choose_mode
			;;
		No | no)
			echo "Exiting..."
			sleep 2
			exit
			;;
		*)
			echo "Invalid entry"
			sleep 2
			display_rules
			;;
	esac	
	
}

