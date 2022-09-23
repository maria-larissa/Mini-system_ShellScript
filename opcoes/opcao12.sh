mapfile -t usuarios < <(getent passwd | cut -d ':' -f 1,6)
tam_vetor=${#usuarios[@]}
for (( i=0; i<=tam_vetor ; i++ )); do
	echo -e ${usuarios[$i]//':'/'\t=>\t '}
done