#! /bin/bash

source playerturn.sh

choose_mode() {
	echo
	echo "Menu"
	echo "1. Multiplayer" 
	echo "2. Quit"
        read -p "Choose mode: " mode

	case $mode in
		1)
			echo
			echo "You have chosen to play multiplayer mode"
			echo "Loading..."
			sleep 2
			board
			player_turn
			;;
		*)
			echo
			echo "Exiting..."
			sleep 2
			exit
			;;
	esac

}

