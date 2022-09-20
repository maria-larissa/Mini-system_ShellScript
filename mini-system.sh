resposta=1
while [[ $resposta == 1 ]]; do
	echo -e "\n\t\t********MENU PRINCIPAL*********\n"

	echo "1 - Somar dois números inteiros e saber qual o maior."
	echo "2 - Verificar se um usuário é válido no sistema"
	echo "3 - Listar tudo que há em um diretório específico"
	echo "4 - Imprimir todos os números pares entre 0 e um número informado"
	echo "5 - Verificar se um arquivo existe e imprimie o seu tamanho em bytes"
	echo "6 - Menu secundário"
	echo "7 - Imprimir todas as datas em que um laboratório deverá ser reservado no semestre."
	echo "8 - Renomear arquivos.txt de um diretório, de acordo com a primeira palavra do conteúdo"
	echo "9 - Ordenar alfabeticamente uma lista de palavras"
	echo "10 - Ordenar alfabeticamente palavras após cada nova inserção."
	echo "11 - Operações aritméticas básicas (+, -, *, /)"
	echo "12 - Listar os usuários válidos no sistema e seus respectivos diretórios 'home'"
	echo "13 - Imprimir qual o shell mais utilizado detre os usuários válidos no sistema"
	echo "14 - Sair"

	echo -e "\n Ao selecionar uma opção será exibido um manual de instruções de uso. \n"
	echo -e "Informe a opção desejada: "
	read opcao

	if [ $opcao == 1 ]; then
		echo "******MANUAL DE INTRUÇÕES******"
		bash opcao1.sh
	elif [ $opcao == 2 ]; then
		bash opcao2.sh
	elif [ $opcao == 3 ]; then
		bash opcao3.sh
	elif [ $opcao == 4 ]; then
		bash opcao4.sh
	elif [ $opcao == 5 ]; then
		bash opcao5.sh
	elif [ $opcao == 6 ]; then
		bash opcao6.sh
	elif [ $opcao == 7 ]; then
		bash opcao7.sh
	elif [ $opcao == 8 ]; then
		bash opcao8.sh
	elif [ $opcao == 9 ]; then
		bash opcao9.sh
	elif [ $opcao == 10 ]; then
		bash opcao10.sh
	elif [ $opcao == 11 ]; then
		bash opcao11.sh
	elif [ $opcao == 12 ]; then
		bash opcao12.sh
	elif [ $opcao == 13 ]; then
		bash opcao13.sh
	elif [ $opcao == 14 ]; then
		echo "SAINDO..."
		resposta=0
	else
		echo -e  "\n OPÇÃO INVÁLIDA! \n"
		continue
	fi
done
