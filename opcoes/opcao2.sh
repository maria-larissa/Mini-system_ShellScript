saida=$(zenity --forms \
--title="MANUAL DE INTRUÇÕES" \
--text "Você deverá informar o nome de um usuário \ 
 e será retornado se o usuário é válido \ 
 ou não no sistema." \
 --add-entry="Digite o nome do usuário:")		
			
usuario=$(echo "$saida" | tr '[:upper:]' '[:lower:]')

mapfile -t usuarios < <(getent passwd | cut -d \: -f1)

tam_vetor=${#usuarios[@]}

for ((i=0; i<=(tam_vetor-1); i++));  do

	if [ "$usuario" == "${usuarios[$i]}" ];	then
		user=$(echo "$saida é um usuário cadastrado.")
		break

	elif [ "$i" == "$(($tam_vetor-1))" ];	then
		user=$(echo "$saida não está cadastrado.")
		break
	else 
		exit

	fi

done

zenity --info --width 250 \
--text="$user"
