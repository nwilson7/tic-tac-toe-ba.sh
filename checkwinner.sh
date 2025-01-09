#! /bin/bash

source checkmatch.sh
source playagain.sh

check_winner()
{
	if [ "$game_on" == "false" ]; then
		return;
	fi
	check_match 0 1 2
        if [ "$game_on" == "false" ]; then
		return;
	fi
	check_match 3 4 5
	if [ "$game_on" == "false" ]; then
		return;
	fi
	check_match 6 7 8
        if [ "$game_on" == "false" ]; then
		return;
	fi
	check_match 0 3 6
	if [ "$game_on" == "false" ]; then
		return;
	fi
	check_match 1 4 7
        if [ "$game_on" == "false" ]; then
		return;
	fi
	check_match 2 5 8
	if [ "$game_on" == "false" ]; then
		return;
	fi
	check_match 0 4 8
	if [ "$game_on" == "false" ]; then
		return;
	fi
	check_match 2 4 6

	if [ "$turn" -gt 9 ]; then
		game_on=false
		echo
		echo "Game ends in a draw!"
		play_again
	fi
}

