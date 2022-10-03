#! /usr/bin/env bash
if   [[ -z $1 || -z $2 ]]; then
	echo -e "\e[31mincorrect usage\e[0m"
	echo -e "usage : gen [format] [filename]"
	exit
fi

if [[ $1 -eq "--list" || $1 -eq "-l" ]]; then
	ls ~/.gen_templates/
else
	cp ~/.gen_templates/$1 ./$2
fi
