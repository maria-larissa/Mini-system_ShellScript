#analisa cada arquivo dentro da pasta
dir=$(pwd)
while [ "$dir" != "/" ]; do
	cd ..
	#pwd
	#echo "$dir"
	dir=$(pwd)
done

cd "$1"

for file in $(ls)
 do
	#pula se for diretório ou o próprio arquivo
	if [[ -d $file || $file = $BASH_SOURCE ]]
	then
		continue
	fi
	if [ -z $Ford ]; then
		echo "Arquivo vazio!!!"
	fi

	Fword=$(head -n1 $file | cut -d ' ' -f 1)

	
	#mv move e renomeia
	mv $file $Fword
done