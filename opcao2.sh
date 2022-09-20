usuario=$(echo "$1" | tr '[:upper:]' '[:lower:]')

#echo "usuario = $usuario" 

mapfile -t usuarios < <(getent passwd | cut -d \: -f1)
echo ${usuarios[@]}

tam_vetor=${#usuarios[@]}
#echo "$tam_vetor"

for ((i=0; i<=(tam_vetor-1); i++));  do

	if [ $usuario == ${usuarios[$i]} ];	then
		echo "$1 é um usuário cadastrado."
		break

	elif [ $i = $(($tam_vetor-1)) ];	then
		echo "$1 não está cadastrado."
		break

	fi

done
