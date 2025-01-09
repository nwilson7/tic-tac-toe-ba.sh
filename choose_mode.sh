#! /bin/bash

source playerturn.sh

choose_mode() {
        read -p "Choose mode(solo/multiplayer/quit):" mode

	case $mode in
		solo)
			:
			;;
		multiplayer)
			echo "You have chosen to play multiplayer mode"
			board
			player_turn
			;;
		quit)
			break
			;;
	esac

}

