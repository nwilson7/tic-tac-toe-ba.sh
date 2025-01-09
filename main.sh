#! /bin/bash

source welcome.sh
source choose_mode.sh
source checkwinner.sh
source checkmatch.sh
source playerturn.sh
source board.sh

moves=(1 2 3 4 5 6 7 8 9)

player1="X"
player2="O"

turn=1
game_on=true

welcome_message

choose_mode

while $game_on
do
	board
	player_turn
	check_winner
done

