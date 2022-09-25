saida=$(zenity --forms \
--title="MANUAL DE INTRUÇÕES" \
--text "Você deverá informar o nome de um usuário e será retornado\n\
se o usuário é válido ou não no sistema."\
 --add-entry="Digite o nome do usuário:")		
			
usuario=$(echo "$saida" | tr '[:upper:]' '[:lower:]')

if [[ -z $usuario ]];then
	exit
fi 

mapfile -t usuarios < <(getent passwd | cut -d \: -f1)

tam_vetor=${#usuarios[@]}

for ((i=0; i<=(tam_vetor-1); i++));  do
	if [[ $usuario == ${usuarios[$i]} ]];	then
		zenity --info --text="$(echo "$saida é um usuário CADASTRADO.")"
		break
	fi
	
	if [[ $i == $(($tam_vetor-1)) ]];	then
		zenity --info --text="$(echo "$saida NÃO está CADASTRADO.")"
		break
	fi
done

