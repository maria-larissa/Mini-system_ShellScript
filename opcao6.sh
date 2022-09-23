res=0
while [ $res != 1 -o $res != 2 -o $res != 3 -o $res != 4 ]; do
	echo ""
	echo -e "\t\033[01;37;42m********MENU SECUNDÁRIO********\033[00;37m\n"
	echo "1 - Exibir status da utilização das partições do sistema"
	echo "2 - Exibir relação de usuários logados"
	echo "3 - Exibir data/hora"
	echo "4 - Sair"
	echo -e "\n\t\033[01;37;42m*******************************\033[00;37m\n"
	echo -n "Informe sua opção: "
	read res
	if [ $res -eq 1 ]; then
		df -h
		break
	elif [ $res -eq 2 ]; then
		who
		break
	elif [ $res -eq 3 ]; then
		date
		break
	elif [ $res -eq 4 ]; then
		exit
	else
		echo "OPÇÃO INVÁLIDA! TENTE OUTRA VEZ".	
	fi
done