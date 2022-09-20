reposta="n"
i=0
while [ "$resposta" != "sair" ]; do
	echo -n "Digite a palavra a ser adicionada na lista: "
	read resposta
	if [ "$resposta" == "sair" ];then
		break
	fi
	lista[$i]=$resposta
	ordenado=($(printf '%s\n' "${lista[@]}"|sort))
	echo ${ordenado[@]}
	echo ""
	i=$((i+1))
done
