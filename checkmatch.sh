#! /bin/bash

check_match() {
	  if  [[ ${moves[$1]} == ${moves[$2]} ]]&& \
	      [[ ${moves[$2]} == ${moves[$3]} ]]; then
			game_on=false
	  fi
	  if [ $game_on == false ]; then
		  if [ ${moves[$1]} == 'x' ];then
			  echo "Player one wins!"
			  return 
		  else
			  echo "player two wins!"
			  return 
		  fi
	  fi




