#! /usr/bin/env bash
if   [[ -z $1 || -z $2 ]]; then
	echo -e "\e[31mincorrect usage\e[0m"
	echo -e "usage : gen [format] [filename]"
	exit
fi

if [[ $1 == "--list" || $1 == "-l" ]]; then
	ls -al ~/.gen_templates/
else
	cp ~/.gen_templates/$1 ./$2
	echo -e "[\e[32mGEN\e[0m] $2"
fi

vim $2
