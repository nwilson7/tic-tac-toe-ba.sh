#! /bin/bash

source board.sh
source playerturn.sh

play_again () {
	turn=1
	echo
	read -p "Play again? Yes/No : " choice
	case $choice in
		Yes | yes)
			echo
			board
			player_turn
			;;
		No | no)
			echo
			return
			;;
	esac
}

