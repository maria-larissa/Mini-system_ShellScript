opcao=$(bash menu.sh)  
while [ $opcao ]; do
	if [ $opcao == 1 ]; then
		bash opcoes/opcao1.sh 
		opcao=$(bash menu.sh)

	elif [ $opcao == 2 ]; then
		bash opcoes/opcao2.sh
		opcao=$(bash menu.sh)
		
	elif [ $opcao == 3 ]; then
		bash opcoes/opcao3.sh 
		opcao=$(bash menu.sh)
		
	elif [ $opcao == 4 ]; then
		bash opcoes/opcao4.sh 
		opcao=$(bash menu.sh)
		
	elif [ $opcao == 5 ]; then
		bash opcoes/opcao5.sh 
		opcao=$(bash menu.sh)
		
	elif [ $opcao == 6 ]; then
		bash opcoes/opcao6.sh
		opcao=$(bash menu.sh)
		
	elif [ $opcao == 7 ]; then
		bash opcoes/opcao7.sh 
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
		opcao=$(bash menu.sh)
	else
		zenity --error --text="OPÇÃO INVÁLIDA!"
		opcao=$(bash menu.sh)
	fi
done
