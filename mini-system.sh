resposta=1
while [[ $resposta == 1 ]]; do
	echo -e "\n\t\t\033[01;37;44m********MENU PRINCIPAL*********\033[00;37m\n"

	echo -e "\033[01;36m1\033[00;37m - Somar dois números inteiros e saber qual o maior."
	echo -e "\033[01;36m2\033[00;37m - Verificar se um usuário é válido no sistema"
	echo -e "\033[01;36m3\033[00;37m - Listar tudo que há em um diretório específico"
	echo -e "\033[01;36m4\033[00;37m - Imprimir todos os números pares entre 0 e um número informado"
	echo -e "\033[01;36m5\033[00;37m - Verificar se um arquivo existe e imprimie o seu tamanho em bytes"
	echo -e "\033[01;36m6\033[00;37m - Menu secundário"
	echo -e "\033[01;36m7\033[00;37m - Imprimir todas as datas em que um laboratório deverá ser reservado no semestre."
	echo -e "\033[01;36m8\033[00;37m - Renomear arquivos.txt de um diretório, de acordo com a primeira palavra do conteúdo"
	echo -e "\033[01;36m9\033[00;37m - Ordenar alfabeticamente uma lista de 3 palavras"
	echo -e "\033[01;36m10\033[00;37m - Ordenar alfabeticamente lista de palavras após cada nova inserção."
	echo -e "\033[01;36m11\033[00;37m - Operações aritméticas básicas (+, -, *, /)"
	echo -e "\033[01;36m12\033[00;37m - Listar os usuários válidos no sistema e seus respectivos diretórios 'home'"
	echo -e "\033[01;36m13\033[00;37m - Imprimir qual o shell mais utilizado detre os usuários válidos no sistema"
	echo -e "\033[01;36m14\033[00;37m - Sair"

	echo -e "\n\U00002757 Ao selecionar uma opção será exibido um manual de instruções de uso. \U00002757\n"
	echo -n "Informe a opção desejada: "
	read opcao

	if [ $opcao == 1 ]; then
		echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
		echo "Voce deverá informar dois números inteiros e será retornado qual o maior entre os dois e o valor da soma."
		echo -e "\t\t\033[01;37;45m*******************************\033[00;37m\n"
		echo -n "Digite o primeiro número: "
		read num1
		echo -n "Digite o segundo número: "
		read num2
		bash opcao1.sh $num1 $num2
		
		
	elif [ $opcao == 2 ]; then
		echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
		echo "Você deverá informar o nome de um usuário e será retornado se o usuário é válido ou não no sistema."
		echo -e "\t\t*******************************\n"
		echo -n "Digite o nome do usuário: "
		read user
		bash opcao2.sh $user
		
		
	elif [ $opcao == 3 ]; then
		echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
		echo "Você deverá passar caminho (completo) de um diretorio e será listado todos os arquivos existentes, destacando os diretórios (dir)."
		echo -e "\t\t*******************************\n"
		echo -n "Digite o caminho: "
		read caminho
		bash opcao3.sh $caminho
		
		
	elif [ $opcao == 4 ]; then
		echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
		echo "Você deverá informar um número e será retornado todos os numeros pares de 0 até o numero informado."
		echo -e "\t\t*******************************\n"
		bash opcao4.sh $num3
		
		
	elif [ $opcao == 5 ]; then
		echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
		echo "Você deverá infromar o nome de um arquivo e será verificado se existe, caso sim também será retornado o seu tamaho em bytes."
		echo -e "\t\t*******************************\n"
		bash opcao5.sh $arquivo
		
		
	elif [ $opcao == 6 ]; then
		bash opcao6.sh
		
		
	elif [ $opcao == 7 ]; then
		echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
		echo "Você deverá informar as datas de inicio e fim do semestre e os dias da semana em que haverão aula da disciplina será retorna todas as datas que o laboratório deverá ser reservado durante sesmestre."
		echo -e "\t1 - Segunda-feira"
		echo -e "\t2 - Terça-feira"
		echo -e "\t3 - Quarta-feira"
		echo -e "\t4 - Quinta-feira"
		echo -e "\t5 - Sexta-feira"
		echo -e "Ex: \nDigite a data de inicio do semestre: 2008/02/07 \n\tDigite a data de termino do semestre: 2008/07/05 \n\tDigite o id do 1º dia da semana: 1 \n\tDigite o id do 2º dia da semana: 3\nDeve retornar as seguintes datas (dia/mes/ano):\n\t2008/11/02 2008/13/02 2008/18/02 2008/20/02\n\t2008/25/02 2008/27/02 2008/03/03/ 2008/05/03 ...\n"
		echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
		echo -n "Digite a data de inicio do semestre: "
		read data_ini
		echo -n "Digite a data de fim do semestre: "
		read data_fi		
		echo -n "Digite o id do 1º dia da semana: "
		read sem1
		echo -n "Digite o id do 2º dia da semana: "
		read sem2
		bash opcao7.sh $data_ini $data_fi $sem1 $sem2
		
		
	elif [ $opcao == 8 ]; then
		echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
		echo "Você deverá informar o caminho (completo) de um diretório e serão renomeados todos os arquivos de acordo com a primeira palavra encontrada no conteúdo."
		echo "\t\t*******************************"
		echo -n "Digite o caminho: "
		read caminho1
		bash opcao8.sh  $caminho1
		
		
	elif [ $opcao == 9 ]; then
		echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
		echo "Você deverá informar uma lista de 3 palavras e será retornado a lista ordenada."
		echo -e "Ex: casa macaco dedo\nDeverá retornar: casa dedo macaco\n"
		echo -e "\t\t*******************************\n"
		echo -n "Digite 1ª palavra: "
		read pal1
		echo -n "Digite 2ª palavra: "
		read pal2
		echo -n "Digite 3ª palavra: "
		read pal3
		bash opcao9.sh $pal1 $pal2 $pal3
		
		
	elif [ $opcao == 10 ]; then
		echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
		echo "Você ira informa uma lista de palavras,a cada palavra adicionada será retornada a lista ordenada das palavras, até que seja inserida a palavra 'sair'."
		echo -e "\t\t*******************************\n"
		bash opcao10.sh
		
		
	elif [ $opcao == 11 ]; then
		echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
		echo "Você deverá informar dois numeros inteiros e o perdaor artimético, como se tivesse utilizando uma calculadora, será retornado o resultado da operação."
		echo "Ex: 2 + 6"
		echo "Resultado: 8"
		echo -e "\t\t*******************************\n"
		echo -n "Digite um numero: "
		read num4
		echo -n "Digite o operador: "
		read operador
		echo -n "Digite um numero: "
		read num5
		if [[ $operador == '*' ]]; then
			bash opcao11.sh $num4 '*' $num5
		else
			bash opcao11.sh $num4 $operador $num5
		fi
		

	elif [ $opcao == 12 ]; then
		echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
		echo "Será retornada uma lista com todos os usuários cadastrados no sistema e seus respectivos diretórios home."
		echo -e "\t\t*******************************\n"
		bash opcao12.sh
		
	elif [ $opcao == 13 ]; then
		echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
		echo "Será acessado o arquivo /etc/passwd analisado e retornará o shell mais utilizado dentre os usuários existente no sistema."
		echo -e "\t\t*******************************\n"
		bash opcao13.sh
		
	elif [ $opcao == 14 ]; then
		echo -e "\n\U0001F44B \033[01;37mSAINDO...\033[00;37m"
		resposta=0
	else
		echo -e  "\U0001F4A5 \U0001F9D0 OPÇÃO INVÁLIDA! \U0001F4A5\n"
		continue
	fi
done
