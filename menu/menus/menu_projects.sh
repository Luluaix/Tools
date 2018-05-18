function menu_algo
{
	display_menu_algo
	loop_menu
	case $KEY in
	 1) echo 1;;
	 2) echo 2;;
	 3) echo 3;;
	 4) echo 4;;
	 *) return;;
	esac
	menu_algo
}

function menu_system
{
	display_menu_system
	loop_menu
	case $KEY in
	 1) echo 1;;
	 *) return;;
	esac
	menu_system
}

function menu_graph
{
	display_menu_graph
	loop_menu
	case $KEY in
	 1) echo 1;;
	 *) return;;
	esac
	menu_graph
}

function menu_piscines
{
	display_menu_piscines
	loop_menu
	case $KEY in
	 1) echo 1;;
	 2) echo 2;;
	 *) return;;
	esac
	menu_piscines
}

function menu_others
{
	display_menu_others
	loop_menu
	case $KEY in
	 1) echo 1;;
	 *) return;;
	esac
	menu_others
}
