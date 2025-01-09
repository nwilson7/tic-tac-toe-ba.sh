#! /bin/bash



source welcome.sh
source choose_mode.sh
source checkwinner.sh
source checkmatch.sh
source playerturn.sh

moves=(1 2 3 4 5 6 7 8 9)

player1="X"
player2="O"

turn=1
game_on=true

welcome_message

choose_mode

board () {
	  clear
	  echo " ${moves[0]} | ${moves[1]} | ${moves[2]} "
	  echo "-----------"
      	  echo " ${moves[3]} | ${moves[4]} | ${moves[5]} "
	  echo "-----------"
	  echo " ${moves[6]} | ${moves[7]} | ${moves[8]} "
	  echo "============="
 }

welcome_message
board
while $game_on
do
	player_turn
	board
	check_winner
done

