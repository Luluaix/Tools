# function choice1
# {
#
# }

function display_submenu1
{
	if [ ${SUB} != ${1} ]
		then return;
	fi
	VAR="$MENU$SUB"
	eval VAR11="\$CHOICE${VAR}1"
	eval VAR22="\$CHOICE${VAR}2"
	eval VAR33="\$CHOICE${VAR}3"
	eval VAR44="\$CHOICE${VAR}4"
	eval VAR55="\$CHOICE${VAR}5"
	display_left "    1) " "$VAR11";
	display_left "    2) " "$VAR22";
	display_left "    3) " "$VAR33";
	display_left "    4) " "$VAR44";
	display_left "    5) " "$VAR55";
}

function display_submenu
{
	# printf "|$MENU| |${1}|"
	if [ ${MENU} != ${1} ]
		then return;
	fi
	eval VAR1="\${CHOICE${MENU}1}"
	eval VAR2="\${CHOICE${MENU}2}"
	eval VAR3="\${CHOICE${MENU}3}"
	eval VAR4="\${CHOICE${MENU}4}"
	eval VAR5="\${CHOICE${MENU}5}"
	display_left "  1) " "$VAR1"; display_submenu1 1
	display_left "  2) " "$VAR2"; display_submenu1 2
	display_left "  3) " "$VAR3"; display_submenu1 3
	display_left "  4) " "$VAR4"; display_submenu1 4
	display_left "  5) " "$VAR5"; display_submenu1 5
}

function display_menu
{
	display_header
	display_left "1) " "${CHOICE1}"; display_submenu 1
	display_left "2) " "${CHOICE2}"; display_submenu 2
	display_left "3) " "${CHOICE3}"; display_submenu 3
	display_left "4) " "${CHOICE4}"; display_submenu 4
	display_left "5) " "${CHOICE5}"; display_submenu 5
}

function menu_sub2
{
	(( SUB2=${1} ))
	display_menu
	loop_menu
	case $KEY in
		*) (( SUB2=0 ))
		return;;
	esac
	menu_sub2
}

function menu_sub1
{
	(( SUB=${1} ))
	display_menu
	loop_menu
	case $KEY in
		1)	 menu_sub2 1;;
		2)	 menu_sub2 2;;
		3)	 menu_sub2 3;;
		4)	 menu_sub2 4;;
		5)	 menu_sub2 5;;
		*) (( SUB=0 ))
		return;;
	esac
	menu_sub1
}

function menu_main
{
	(( MENU=${1} ))
	display_menu
	loop_menu
	case $KEY in
		1)	
		2)	 menu_sub1 2;;
		3)	 menu_sub1 3;;
		4)	 menu_sub1 4;;
		5)	 menu_sub1 5;;
		*) (( MENU=0 ))
		return;;
	esac
	menu_main
}

function menu
{
	(( MENU=0 ))
	(( SUB=0 ))
	display_menu
	loop_menu
	case $KEY in
		1) menu_main 1;;
		2) menu_main 2;;
		3) menu_main 3;;
		4) menu_main 4;;
		5) menu_main 5;;
	esac
	menu
}
