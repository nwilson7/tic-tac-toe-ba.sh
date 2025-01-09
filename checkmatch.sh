#! /bin/bash

source playagain.sh

check_match() {
	  if  [[ ${moves[$1]} == ${moves[$2]} ]]&& \
	      [[ ${moves[$2]} == ${moves[$3]} ]]; then
			game_on=false
	  fi
	  if [ "$game_on" == false ]; then
		  if [ ${moves[$1]} == 'X' ];then
			  echo
			  board
			  echo "Player one wins!"
			  echo
			  ((player1score++))
			  echo -e "Current Score:\nPlayer 1's score = $player1score\nPlayer 2's score = $player2score" 
			  play_again
		  else
			  board
			  echo "Player two wins!" 
			  echo
			  ((player2score++))
			  echo -e "Current Score:\nPlayer 1's score = $player1score\nPlayer 2's score = $player2score"
			  play_again
		  fi
	  fi
}




