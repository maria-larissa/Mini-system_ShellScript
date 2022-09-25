zenity --info --title="MANUAL DE INTRUÇÕES" \
--text="Será acessado e analisado o arquivo /etc/passwd,\n então retornará o shell mais utilizado dentre\n os usuários existente no sistema."

mapfile -t shells < <(getent passwd | cut -d ':' -f7)
tam_vetor=${#shells[@]}
maior=0
id=0

for (( i=0; i<=$tam_vetor-1 ; )); do
	if [ -z "${shells[$i]}" ]; then
		i=$((i+1))
	else
		aux=${shells[$i]}
		aux1=1
		for (( j=0; j<=$tam_vetor ; j++ )); do
			if [ -z "${shells[$j]}" ]; then
				j=$((j+1))
			else
				if [ "$j" == "$i" ]; then
					j=$((j+1))
				fi
				if [ "${shells[$j]}" == "${shells[$i]}" ]; then
					aux1=$((aux1+1))
					unset shells[$j]
				fi
			fi
		done
		i=$((i+1))
		if [ "$i" == "0" ]; then
			maior=$aux1
			id=0
		fi
		if [ $aux1 -gt $maior ]; then
			maior=$aux1
			id=$i
		fi
	fi
done
cont=0
for (( i=0 ; i<=$tam_vetor; i++ ));do
	if [ -z "${shells[$i]}" ];then
		i=$((i+1))
		cont=$((cont+1))
	fi
	cont=$((cont+1))
	if [ $cont -eq $id ]; then
		zenity --info --title="Shell mais frequente" \
		--text="O shell '${shells[$i]}' é o mais utilizado, total de $maior usuarios."
		break
	fi
done
