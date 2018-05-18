function display_center
{
	local LEN MARGIN
		LEN=${#1}
		(( MARGIN= (${COLUMNS} - ${LEN}) / 2 ))
		printf "%"${MARGIN}"s" " "
		printf "${1}"
		(( MARGIN= ${MARGIN} + (${COLUMNS} - ${LEN} - ${MARGIN} * 2) ))
		printf "%"${MARGIN}"s\n" " "
}

function display_left
{
	local LEN MARGIN
	if [ ${#2} != 0 ]
	then
		LEN=${#2}-${#1}
		(( MARGIN=15 ))
		printf "%"${MARGIN}"s" " "
		printf "${1}${2}"
		(( MARGIN= (${COLUMNS} - ${LEN} - ${MARGIN}) ))
		printf "%"${MARGIN}"s\n" " "
	fi
}
