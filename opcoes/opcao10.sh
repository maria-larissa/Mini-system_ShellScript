
i=0
while [ "$resposta" != "sair" ]; do
		palavra=$(zenity --entry \
		--title="MANUAL DE INTRUÇÕES" \
		--text="\tVocê ira informa uma lista de palavras,a cada palavra\n adicionada será retornada a lista ordenada das palavras.\n\n\tCaso deseje SAIR, digite a palavra 'sair'.\n\nDigite uma palavra"
		--entry)
	if [ "$palavra" == "sair" ];then
		break
	fi
	lista[$i]=$palavra
	ordenado=($(printf '%s\n' "${lista[@]}"|sort))
	zenity --info \
	--title="Lista ordenada" \
	--text="Segue a lista das palavras ordenadas\n\n$(echo ${ordenado[@]})"
	i=$((i+1))
done
