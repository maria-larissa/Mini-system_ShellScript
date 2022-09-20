
resposta=0
while [ $resposta != 1 -o $resposta != 2 -o $resposta != 3 -o $resposta != 4 ]; do
	echo ""
	echo "		********MENU********"
	echo "1 - Exibir status da utilização das partições do sistema"
	echo "2 - Exibir relação de usuários logados"
	echo "3 - Exibir data/hora"
	echo "4 - Sair"
	
	echo -n "Informe sua opção: "
	read resposta
	echo ""
	if [ $resposta -eq 1 ]; then
		df -h
		break
	elif [ $resposta -eq 2 ]; then
		who
		break
	elif [ $resposta -eq 3 ]; then
		date
		break
	elif [ $resposta -eq 4 ]; then
		exit
	else
		echo "OPÇÃO INVÁLIDA! TENTE OUTRA VEZ".	
	fi
done
