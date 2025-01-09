source playerturn.sh

choose_mode() {
        read "Choose mode(solo/multiplayer/quit):" mode

	case $mode in
		solo)
			pass
			;;
		multiplayer)
			echo "You have chosen to play multiplayer mode"
			player_turn
			;;
		quit)
			break
			;;
	esac

}

