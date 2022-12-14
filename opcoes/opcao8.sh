caminho=$(zenity --forms --title="MANUAL DE INTRUÇÕES" \
--text="Você deverá informar o caminho (completo) de um\n\
diretório e serão renomeados todos os arquivos de\n\
acordo com a primeira palavra encontrada no conteúdo.\n" \
--add-entry="Digite o caminho")

if [[ -z $caminho ]];then
	exit
else
	if [ "$(file -b $caminho)" == "directory" ]; then
		dir=$(pwd)
		while [ "$dir" != "/" ]; do
			cd ..
			dir=$(pwd)
		done

		cd "$caminho"

		for file in $(ls)
		do
			if [[ -d $file || $file = $BASH_SOURCE || -z $Ford ]]
			then
				continue
			fi
			Fword=$(head -n1 $file | cut -d ' ' -f 1)

			mv $file $Fword".txt"
		done
		zenity --info \
		--text="\tTodos os arquivos do diretório \n '$caminho' foram renomeados."
	else
		zenity --error --title="Erro" \
		--text="Ocorreu um erro! \n '$caminho' Não é um diretório."
	fi
fi
