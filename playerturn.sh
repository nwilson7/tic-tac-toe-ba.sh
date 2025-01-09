#! /bin/bash
source main.sh

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
