#!/bin/sh
# Colors
C_CLEAR="\e[0m"
C_BLUEBG="\e[44m"
KEY=""
COLUMNS=`tput cols`

source display/display_margin.sh
source display/display_header.sh
source display/display_menu.sh
source display/display_projects.sh
source menus/menu.sh
source menus/menu_projects.sh
# source menu/set_menu.sh
source utils/loop.sh

function set_menu
{
	# CHOICE="$CHOICE"
	CHOICE1="Configuration"
		CHOICE11="Install Oh-my-zsh"
			CHOICE111="Install Oh-my-zsh"

}

set_menu
menu
