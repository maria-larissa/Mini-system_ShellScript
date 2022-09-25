zenity --info \
--title="MANUAL DE INTRUÇÕES" \
--text="Será retornada uma lista com todos os usuários cadastrados\nno sistema e seus respectivos diretórios home.\nSeparados por '=>'"

mapfile -t usuarios < <(getent passwd | cut -d ':' -f 1,6)
tam_vetor=${#usuarios[@]}
for (( i=0; i<=tam_vetor ; i++ )); do
	aux=$(echo ${usuarios[$i]//':'/'\t=>\t '})
	print[$i]=$(echo "$aux\t\t")
done
zenity --info --title="Lista de usuários" \
--text="$(echo "${print[@]}\n")"
