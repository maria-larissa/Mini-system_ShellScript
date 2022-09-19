resposta=1
while [[ $resposta == 1 ]]; do
	echo -e "\n********MENU PRINCIPAL*********\n"

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

	echo "Ao selecionar uma opção será exibido um manual de instruções de uso."
	echo -e "Informe a opção desejada: "
	read opcao

	if [ $opcao == 1 ]; then
		echo ""
		
	elif [ $opcao == 2 ]; then
		echo ""
		
		
	elif [ $opcao == 3 ]; then
		echo ""
		
		
	elif [ $opcao == 4 ]; then
		echo ""
		
		
	elif [ $opcao == 5 ]; then
		echo ""
		
		
	elif [ $opcao == 6 ]; then
		echo ""
		
		
	elif [ $opcao == 7 ]; then
		echo ""
		

	elif [ $opcao == 8 ]; then
		echo ""
		
		
	elif [ $opcao == 9 ]; then
		echo ""
		
		
	elif [ $opcao == 10 ]; then
		echo ""
		
		
	elif [ $opcao == 11 ]; then
		echo ""
		
		
	elif [ $opcao == 12 ]; then
		echo ""
		
		
	elif [ $opcao == 13 ]; then
		echo ""
		
	
	elif [ $opcao == 14 ]; then
		echo "SAINDO..."
		resposta=0
	else
		echo -e"\nOPÇÃO INVÁLIDA!\n"
		continue
	fi
done
