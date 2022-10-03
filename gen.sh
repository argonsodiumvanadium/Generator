#!/usr/bin/env bash

if   [[ -z $1 || -z $2 ]]
	echo -e "\e[32mincorrect usage\e[0m"
	echo -e "usage : gen [format] [filename]"
fi

if [[ $1 -eq "--list" || $1 -eq "-l" ]]
	ls ~/.gen_templates/
else
	cp ~/.gen_templates/$1 ./$2
fi
