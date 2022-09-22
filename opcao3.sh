
dir=$(pwd)
while [ "$dir" != "/" ]; do
	cd ..
	dir=$(pwd)
done

cd "$1"

mapfile -t arquivos < <(ls -1)
tam_vetor=${#arquivos[@]}

for (( i=0; i<=($tam_vetor-1); i++ )); do
	tipo=$(file -b ${arquivos[$i]})
	if [ "$tipo" == "directory" ]; then
		echo "${arquivos[$i]}    |     directory"
	else
		echo "${arquivos[$i]}"
	fi
done