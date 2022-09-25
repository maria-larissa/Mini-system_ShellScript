saida=$(zenity --forms \
--title="MANUAL DE INTRUÇÕES" \
--text="Você deverá passar caminho (completo) de \ 
um diretorio e será listado todos os arquivos \ 
existentes, destacando os diretórios (dir)." \
--add-entry="Digite o caminho")


if [ -z $saida ]; then
	exit
elif [ "$(file -b $saida)" == "directory" ]; then
	dir=$(pwd)
	while [ "$dir" != "/" ]; do
		cd ..
		dir=$(pwd)
	done

	cd "$saida"

	mapfile -t arquivos < <(ls -1)
	tam_vetor=${#arquivos[@]}

		for (( i=0; i<=($tam_vetor-1); i++ )); do
		tipo=$(file -b ${arquivos[$i]})
		if [ "$tipo" == "directory" ]; then
			arq[$i]=$(echo "${arquivos[$i]}    |     directory")
		else
			arq[$i]=$(echo "${arquivos[$i]}")
		fi
	done
	
	zenity --info --text="$(echo ${arq[@]} )"

else
	zenity --error --text="'$saida' Não é um diretório."
fi
			
