i=0
while [ "$resposta" != "sair" ]; do
		palavra=$(zenity --forms \
		--title="MANUAL DE INTRUÇÕES" \
		--text="Você ira informa uma lista de palavras,a cada palavra\n adicionada será retornada a lista ordenada das palavras.\n\nCaso deseje SAIR, digite a palavra 'sair'.\n" \
		--add-entry="Digite uma palavra")
		
	if [[ $i==0 && -z $palavra ]];then
		exit
	fi
	
	if [[ -z $palavra ]];then
		zenity --info --title="Atenção" --text="Insira uma palavra."
	else		
		if [ "$palavra" == "sair" ];then
			break
		fi
		lista[$i]=$palavra
		ordenado=($(printf '%s\n' "${lista[@]}"|sort))
		zenity --info \
		--title="Lista ordenada" \
		--text="Segue a lista das palavras ordenadas\n\n$(echo ${ordenado[@]})"
		i=$((i+1))
	fi
done
