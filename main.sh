#! /bin/bash

source playerturn.sh
source welcome.sh

moves=(1 2 3 4 5 6 7 8 9)

player1="X"
player2="O"

turn=1

welcome_message

choose_mode() {
	echo "Choose mode(single player/multiplayer):" 
}

board () {
	  clear
	  echo " ${moves[0]} | ${moves[1]} | ${moves[2]} "
	  echo "-----------"
      	  echo " ${moves[3]} | ${moves[4]} | ${moves[5]} "
	  echo "-----------"
	  echo " ${moves[6]} | ${moves[7]} | ${moves[8]} "
	  echo "============="
 }

player_turn

