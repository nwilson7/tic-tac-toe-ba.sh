#! /bin/bash

source welcome.sh
source choose_mode.sh
source checkwinner.sh
source checkmatch.sh
source playerturn.sh
source board.sh
source rules.sh

welcome_message

display_rules

player1score=0
player2score=0

while true;
do
	moves=(1 2 3 4 5 6 7 8 9)

	player1="X"
	player2="O"
	turn=1
	game_on=true

	while $game_on
	do
		board
		player_turn
		check_winner
	done

    	read -p "Do you want to play again? Yes/No: " play_again
    	case $play_again in
		Yes | yes)
			echo
			echo "Starting a new game..."
		 	sleep 2
			;;
		No | no)
			echo
			echo "Thanks for playing! Final scores:"
			echo "Player 1: $player1score"
			echo "Player 2: $player2score"
			exit
			;;
		*)
			echo "Invalid input. Exiting the game."
			sleep 2
			exit
			;;
	esac

done





