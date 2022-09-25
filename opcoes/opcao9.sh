lista=$(zenity --forms \
--title="MANUAL DE INTRUÇÕES" \
--text="Você deverá informar uma lista de até 3 palavras e será retornado a lista ordenada. \ 
Ex: casa macaco dedo\nDeverá retornar: casa dedo macaco\n" \
--separator="," \
--add-entry="Digite 1ª palavra" \
--add-entry="Digite 2ª palavra" \
--add-entry="Digite 3ª palavra" )
pal1=$(echo $lista | cut -d ',' -f1)
pal2=$(echo $lista | cut -d ',' -f2)
pal3=$(echo $lista | cut -d ',' -f3)

if [[ -z $pal1 && -z $pal2 && -z $pal3 ]];then
	exit
else
	aux=($pal1 $pal2 $pal3)
	ordenada=($(printf '%s\n' "${aux[@]}" | sort))
	zenity --info --text="Lista ordenada com sucesso!\n\nLista: $(echo ${aux[@]}) \n\nLista ordenada: $(echo ${ordenada[@]})"
fi
