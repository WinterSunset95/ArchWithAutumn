#!/bin/bash
#
#
# Setting up options
optupdate="Y"
opti3="Y"
optneovim="Y"

checkInput () {
	if [[ "$1" != "n" && "$1" != "" ]]; then
		printf "Invalid input!!"
		exit 1;
	fi
}

printf "Update and upgrade packages (Y/n)? ";
read optupdate;
checkInput $optupdate

printf "Setup i3(conky, statusbar, tmux included) (Y/n)? "
read opti3;
checkInput $opti3

printf "Setup neovim? (Y/n) "
read optneovim
checkInput $optneovim

printf "hello world $optupdate $opti3 $optneovim"
