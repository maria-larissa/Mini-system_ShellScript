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
	echo "9 - Ordenar alfabeticamente uma lista de 3 palavras"
	echo "10 - Ordenar alfabeticamente lista de palavras após cada nova inserção."
	echo "11 - Operações aritméticas básicas (+, -, *, /)"
	echo "12 - Listar os usuários válidos no sistema e seus respectivos diretórios 'home'"
	echo "13 - Imprimir qual o shell mais utilizado detre os usuários válidos no sistema"
	echo "14 - Sair"

	echo -e "\n Ao selecionar uma opção será exibido um manual de instruções de uso. \n"
	echo -n "Informe a opção desejada: "
	read opcao

	if [ $opcao == 1 ]; then
		echo -e "\n\t\t******MANUAL DE INTRUÇÕES******"
		echo "Voce deverá informar dois números inteiros e será retornado qual o maior entre os dois e o valor da soma."
		echo -e "\t\t*******************************\n"
		echo -n "Digite o primeiro número: "
		read num1
		echo -n "Digite o segundo número: "
		read num2
		bash opcao1.sh $num1 $num2
		
		
	elif [ $opcao == 2 ]; then
		echo -e "\n\t\t******MANUAL DE INTRUÇÕES******"
		echo "Você deverá informar o nome de um usuário e será retornado se o usuário é válido ou não no sistema."
		echo -e "\t\t*******************************\n"
		echo -n "Digite o nome do usuário: "
		read user
		bash opcao2.sh $user
		
		
	elif [ $opcao == 3 ]; then
		echo -e "\n\t\t******MANUAL DE INTRUÇÕES******"
		echo "Você deverá passar caminho (completo) de um diretorio e será listado todos os arquivos existentes, destacando os diretórios (dir)."
		echo -e "\t\t*******************************\n"
		echo -n "Digite o caminho: "
		read caminho
		bash opcao3.sh $caminho
		
		
	elif [ $opcao == 4 ]; then
		echo -e "\n\t\t******MANUAL DE INTRUÇÕES******"
		echo "Você deverá informar um número e será retornado todos os numeros pares de 0 até o numero informado."
		echo -e "\t\t*******************************\n"
		bash opcao4.sh $num3
		
		
	elif [ $opcao == 5 ]; then
		echo -e "\n\t\t******MANUAL DE INTRUÇÕES******"
		echo "Você deverá infromar o nome de um arquivo e será verificado se existe, caso sim também será retornado o seu tamaho em bytes."
		echo -e "\t\t*******************************\n"
		bash opcao5.sh $arquivo
		
		
	elif [ $opcao == 6 ]; then
		bash opcao6.sh
		
		
	elif [ $opcao == 7 ]; then
		echo -e "\n\t\t******MANUAL DE INTRUÇÕES******"
		echo "Você deverá informar as datas de inicio e fim do semestre e os dias da semana em que haverão aula da disciplina será retorna todas as datas que o laboratório deverá ser reservado durante sesmestre."
		echo -e "\t1 - Segunda-feira"
		echo -e "\t2 - Terça-feira"
		echo -e "\t3 - Quarta-feira"
		echo -e "\t4 - Quinta-feira"
		echo -e "\t5 - Sexta-feira"
		echo -e "Ex: 2008/02/07 2008/07/05 1 3\nDeve retornar as seguintes datas (dia/mes/ano):\n11/02/2008 13/02/2008 18/02/2008 20/02/2008\n25/02/2008 27/02/2008 03/03/2008 05/03/2008 ...\n"
		echo -e "\t\t*******************************\n"
		echo -n "Digite a data de inicio do semestre: "
		read data_ini
		echo -n "Digite a data de fim do semestre: "
		read data_fi		
		echo -n "Digite o id do 1º dia da semana: "
		read dia1
		echo -n "Digite o id do 2º dia da semana: "
		read dia2
		bash opcao7.sh "$data_ini" "$data_fi" "$dia1 $dia2"
		
		
	elif [ $opcao == 8 ]; then
		echo "\n\t\t******MANUAL DE INTRUÇÕES******"
		echo "Você deverá informar o caminho (completo) de um diretório e serão renomeados todos os arquivos de acordo com a primeira palavra encontrada no conteúdo."
		echo "\t\t*******************************"
		echo -n "Digite o caminho: "
		read caminho1
		bash opcao8.sh  $caminho1
		
		
	elif [ $opcao == 9 ]; then
		echo -e "\n\t\t******MANUAL DE INTRUÇÕES******"
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
		echo "\n\t\t******MANUAL DE INTRUÇÕES******"
		echo "Você ira informa uma lista de palavras,a cada palavra adicionada será retornada a lista ordenada das palavras, até que seja inserida a palavra 'sair'."
		echo -e "\t\t*******************************\n"
		bash opcao10.sh
		
		
	elif [ $opcao == 11 ]; then
		echo -e "\n\t\t******MANUAL DE INTRUÇÕES******"
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
		echo "\n\t\t******MANUAL DE INTRUÇÕES******"
		echo "Será retornada uma lista com todos os usuários cadastrados no sistema e seus respectivos diretórios home."
		echo -e "\t\t*******************************\n"
		bash opcao12.sh
		
	elif [ $opcao == 13 ]; then
		echo "\n\t\t******MANUAL DE INTRUÇÕES******"
		echo "Será acessado o arquivo /etc/passwd analisado e retornará o shell mais utilizado dentre os usuários existente no sistema."
		echo -e "\t\t*******************************\n"
		bash opcao13.sh
		
	elif [ $opcao == 14 ]; then
		echo -e "\nSAINDO..."
		resposta=0
	else
		echo -e  "\n OPÇÃO INVÁLIDA! \n"
		continue
	fi
done
