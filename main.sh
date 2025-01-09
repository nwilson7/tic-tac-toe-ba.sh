#! /bin/bash

moves=(1 2 3 4 5 6 7 8 9)

player1="X"
player2="O"

turn=1

welcome_message() {
	echo "==================================="
	echo "Welcome to tic-tac-toe bash edition"
	echo "==================================="
}

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

player_turn () {
	if [[ $(($turn % 2)) == 0 ]]; then
		play=$player2
		echo -n "Player 2, choose a square: "
	else
		play=$player1
		echo -n "Player 1, choose a square: "
	fi

	read "" square
	
	space=${moves[$square - 1)]}

	if [[ ! $space =~ ^[0-9]+$ ]]; then
		echo "Invalid square!"
		player_turn
	else
		moves[$square -1)]=$play
		((turn++))
	fi
	space=${moves[($square - 1)]}
}



