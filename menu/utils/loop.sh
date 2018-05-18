function loop_menu
{
	while read  -sn 1 KEY;
	do
		# printf %s $KEY
		if [ $KEY == $'\e' ]
		then
			exit
		fi
		return
	done
}
