mapfile -t usuarios < <(getent passwd | cut -d ':' -f 1,6)
tam_vetor=${#usuarios[@]}
echo "tam = $tam_vetor"

for (( i=0; i<=tam_vetor ; i++ )); do
	echo ${usuarios[$i]//':'/' => '}
done