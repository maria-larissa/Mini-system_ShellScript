
#cd home/larissa
dir=$(pwd)
while [ "$dir" != "/" ]; do
	cd ..
	#pwd
	#echo "$dir"
	dir=$(pwd)
done

cd "$1"

#pwd

mapfile -t arquivos < <(ls -1)
tam_vetor=${#arquivos[@]}
echo "tam=$tam_vetor"

for (( i=0; i<=($tam_vetor-1); i++ )); do
	tipo=$(file -b ${arquivos[$i]})
	#echo "tipo= $tipo"
	if [ "$tipo" == "directory" ]; then
		echo "${arquivos[$i]}    |     directory"
	else
		echo "${arquivos[$i]}"
	fi
done
 

