if [ "$(file -b $1)" == "directory" ]; then
	dir=$(pwd)
	while [ "$dir" != "/" ]; do
		cd ..
		dir=$(pwd)
	done

	cd "$1"

	for file in $(ls)
	do
		if [[ -d $file || $file = $BASH_SOURCE ]]
		then
			continue
		fi
		if [ -z $Ford ]; then
			echo "Arquivo vazio!!!"
		fi

		Fword=$(head -n1 $file | cut -d ' ' -f 1)

		mv $file $Fword
	done
else
	echo "$1 Não é um diretório."
fi