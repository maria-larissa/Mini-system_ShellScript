res=0
while [ $res != 1 -o $res != 2 -o $res != 3 -o $res != 4 ]; do
	echo ""
	res=$(zenity --forms \
	--title="MENU SECUNDÁRIO" \
	--text="01 - Exibir status da utilização das partições do sistema\n\
02 - Exibir relação de usuários logados\n\
03 - Exibir data/hora\n\
04 - Volta para menu principal" \
	--add-entry="Informe sua opção: ")
	if [[ -z $res || $res -eq 4 ]]; then
		exit
	elif [ $res -eq 1 ]; then
		zenity --info --title="Status de utilização das partições"\
		--text="$(df -h)"
		break
	elif [ $res -eq 2 ]; then
		zenity --info --title="Usuários logados" \
		--text="$(who)"
		break
	elif [ $res -eq 3 ]; then
		zenity --info --title="Data / Hora"\
		--text="$(date)"
		break
	else
		zenity --error --text="OPÇÃO INVÁLIDA! TENTE OUTRA VEZ."	
	fi
done
