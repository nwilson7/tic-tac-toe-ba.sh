#! /bin/bash

source playerturn.sh

choose_mode() {
        read -p "Choose mode(multiplayer/quit):" mode

	case $mode in
		multiplayer)
			echo "You have chosen to play multiplayer mode"
			board
			player_turn
			;;
		*)
			break
			;;
	esac

}

