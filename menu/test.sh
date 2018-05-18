#!/bin/bash
C_CLEAR="\e[0m"
C_RED="\e[31m"
C_GREEN="\e[32m"
C_YELLOW="\e[33m"
C_BLUE="\e[34m"
C_CYAN="\e[36m"
C_WHITE="\e[37m"
C_GREY="\e[10m"
C_GREY="\e[38m"
C_BLACK="\e[30m"
C_BLUEBG="\e[44m"

function check_set_env
{
  COLUMNS=`tput cols`
  if [ "${COLUMNS}" == "" ]
  then
	COLUMNS=80
  fi
  DISK_USAGE="$(du -ms | awk '$2 == "." {print $1}')"
}

function display_center
{
	local LEN MARGIN
		LEN=${#1}
		# if [ ${LEN} = 0 ]
		# then
		# 	LEN=80
		# fi
		(( MARGIN= (${COLUMNS} - ${LEN}) / 2 ))
		printf "%"${MARGIN}"s" " "
		printf "${1}"
		(( MARGIN= ${MARGIN} + (${COLUMNS} - ${LEN} - ${MARGIN} * 2) ))
		printf "%"${MARGIN}"s\n" " "
}

function display_left
{
	local LEN MARGIN
		LEN=${#1}
		(( MARGIN=11 ))
		printf "%"${MARGIN}"s" " "
		printf "${1}"
		(( MARGIN= (${COLUMNS} - ${LEN} - ${MARGIN}) ))
		printf "%"${MARGIN}"s\n" " "
}
	# fi
function display_header
{
	printf "\ec${C_BLUEBG}"
	display_center "/* ************************************************************************** */"
	display_center "/*                                                                            */"
	display_center "/*         ::::::::   ::::::::  ::::    ::: :::::::::: ::::::::::: ::::::::   */"
	display_center "/*       :+:    :+: :+:    :+: :+:+:   :+: :+:            :+:    :+:    :+:   */"
	display_center "/*      +:+        +:+    +:+ :+:+:+  +:+ +:+            +:+    +:+           */"
	display_center "/*     +#+        +#+    +:+ +#+ +:+ +#+ :#::+::#       +#+    :#:            */"
	display_center "/*    +#+        +#+    +#+ +#+  +#+#+# +#+            +#+    +#+   +#+#      */"
	display_center "/*   #+#    #+# #+#    #+# #+#   #+#+# #+#            #+#    #+#    #+#       */"
	display_center "/*   ########   ########  ###    #### ###        ########### ########         */"
	display_center "/*                                                                            */"
	display_center "/*                                               https://github.com/pdamoune  */"
	display_center "/* ************************************************************************** */"
	display_center ""
}

function display_menu1
{
	display_header
	display_left "1) Install Oh-my-zsh"
	display_left "2) Create ~/Document/dev and \$DEV"
	display_left "3) menu 2"
	display_left "4) menu 3"
	display_left "5) "
	display_left "6) "
	display_left "7) "
}

function display_menu2
{
	display_header
	display_left "1) Install Oh-my-zsh"
	display_left "2) Create ~/Document/dev and \$DEV"
	display_left "3) menu 2"
	display_left "   a) "
	display_left "   b) "
	display_left "   c) "
	display_left "4) menu 3"
	display_left ""
	display_left "<=) back"
}

function display_menu3
{
	display_header
	display_left "1) Install Oh-my-zsh"
	display_left "2) Create ~/Document/dev and \$DEV"
	display_left "3) menu 2"
	display_left "4) menu 3"
	display_left "   a) "
	display_left "   b) "
	display_left "   c) "
	display_left ""
	display_left "space) back"
}

check_set_env
display_menu1

while read  -sn 1 key;
do
	printf %s $key
	case $key in
     $'\e') exit;;
	 1) echo 1;;
	 2) ;;
	 3) display_menu2;;
	 4) display_menu3;;
	 5) echo 5;;
	 6) echo 6;;
	 ) display_menu1;;
 	esac
	echo "\033[1A\033[2K"
	if [ "${KEY_PRESSED}" == $'\e' ]
	then
		exit
	fi
done
echo ${TOUCH}
