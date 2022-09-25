opcao=$(bash menu.sh)  
#if [[ $opcao > 0 && $opcao <14 ]] ; then 
	while [ $opcao ]; do
		if [ $opcao == 1 ]; then
			echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
			echo "Voce deverá informar dois números inteiros e será retornado qual o maior entre os dois e o valor da soma."
			echo -e "\t\t\033[01;37;45m*******************************\033[00;37m\n"
			echo -n "Digite o primeiro número: "
			read num1
			echo -n "Digite o segundo número: "
			read num2
			bash opcoes/opcao1.sh $num1 $num2
			opcao=$(bash menu.sh)

		elif [ $opcao == 2 ]; then
			echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
			echo "Você deverá informar o nome de um usuário e será retornado se o usuário é válido ou não no sistema."
			echo -e "\t\t\033[01;37;45m*******************************\033[00;37m\n"
			echo -n "Digite o nome do usuário: "
			read user
			bash opcoes/opcao2.sh $user
			opcao=$(bash menu.sh)
			
		elif [ $opcao == 3 ]; then
			echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
			echo "Você deverá passar caminho (completo) de um diretorio e será listado todos os arquivos existentes, destacando os diretórios (dir)."
			echo -e "\t\t\033[01;37;45m*******************************\033[00;37m\n"
			echo -n "Digite o caminho: "
			read caminho
			bash opcoes/opcao3.sh $caminho
			opcao=$(bash menu.sh)
			
		elif [ $opcao == 4 ]; then
			echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
			echo "Você deverá informar um número e será retornado todos os numeros pares de 0 até o numero informado."
			echo -e "\t\t\033[01;37;45m*******************************\033[00;37m\n"
			bash opcoes/opcao4.sh $num3
			opcao=$(bash menu.sh)
			
		elif [ $opcao == 5 ]; then
			echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
			echo "Você deverá infromar o nome de um arquivo e será verificado se existe, caso sim também será retornado o seu tamaho em bytes."
			echo -e "\t\t\033[01;37;45m*******************************\033[00;37m\n"
			bash opcoes/opcao5.sh $arquivo
			opcao=$(bash menu.sh)
			
		elif [ $opcao == 6 ]; then
			bash opcoes/opcao6.sh
			opcao=$(bash menu.sh)
			
		elif [ $opcao == 7 ]; then
			echo -e "\n\t\t\033[01;37;45m******MANUAL DE INTRUÇÕES******\033[00;37m"
			echo "Você deverá informar as datas de inicio e fim do semestre e os dias da semana em que haverão aula da disciplina será retorna todas as datas que o laboratório deverá ser reservado durante sesmestre."
			echo -e "\t1 - Segunda-feira"
			echo -e "\t2 - Terça-feira"
			echo -e "\t3 - Quarta-feira"
			echo -e "\t4 - Quinta-feira"
			echo -e "\t5 - Sexta-feira"
			echo -e "Ex: \nDigite a data de inicio do semestre: 2008/02/07 \n\tDigite a data de termino do semestre: 2008/07/05 \n\tDigite o id do 1º dia da semana: 1 \n\tDigite o id do 2º dia da semana: 3\nDeve retornar as seguintes datas (dia/mes/ano):\n\t2008/11/02 2008/13/02 2008/18/02 2008/20/02\n\t2008/25/02 2008/27/02 2008/03/03/ 2008/05/03 ...\n"
			echo -e "\t\t\033[01;37;45m*******************************\033[00;37m\n"
			echo -n "Digite a data de inicio do semestre: "
			read data_ini
			echo -n "Digite a data de fim do semestre: "
			read data_fi		
			echo -n "Digite o id do 1º dia da semana: "
			read sem1
			echo -n "Digite o id do 2º dia da semana: "
			read sem2
			bash opcoes/opcao7.sh $data_ini $data_fi $sem1 $sem2
			opcao=$(bash menu.sh)
			
		elif [ $opcao == 8 ]; then
			bash opcoes/opcao8.sh 
			opcao=$(bash menu.sh)
			
		elif [ $opcao == 9 ]; then	
			bash opcoes/opcao9.sh 
			opcao=$(bash menu.sh)
			
		elif [ $opcao == 10 ]; then

			bash opcoes/opcao10.sh
			opcao=$(bash menu.sh)
			
		elif [ $opcao == 11 ]; then
			bash opcoes/opcao11.sh 
			opcao=$(bash menu.sh)

		elif [ $opcao == 12 ]; then	
			bash opcoes/opcao12.sh
			opcao=$(bash menu.sh)

		elif [ $opcao == 13 ]; then 
			bash opcoes/opcao13.sh
			opcao=$(bash menu.sh)

		elif [ $opcao == 14 ]; then
			zenity --info --title="Autores"\
			--text="\tMaria Larissa da Silva Andrade\nGraduanda em Matemática Computacional\n\n\tNazareno Mateus de Sousa\nGraduando em Matemática Computacional\n\n\t\t\t\t2022"
			break
		else
			zenity --error --text="OPÇÃO INVÁLIDA!"
			opcao=$(bash menu.sh)
		fi

	done
