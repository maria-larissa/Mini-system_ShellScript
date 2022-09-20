#analisa cada arquivo dentro da pasta
for file in $(ls)
 do
	#pula se for diretório ou o próprio arquivo
	if [[ -d $file || $file = $BASH_SOURCE ]]
	then
		continue
	fi

	Fword=$(head -n1 $file | cut -d ' ' -f 1)

	if [ -z $Ford ]; then
		echo "Arquivo vazio!!!"
	fi
	
	#mv move e renomeia
	mv $file $Fword
done