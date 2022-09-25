saida=$(zenity --forms \
--title="MANUAL DE INTRUÇÕES" \
--text="Você deverá informar um número e será retornado \ 
 todos os numeros pares de 0 até o numero informado." \
--add-entry="Digite um número")

if [ -z $saida ];then
	exit
else
	for ((i=0; i<=saida; ++i)); do    
	  	if [ $(($i%2)) -eq 0 ];
	  	then
	  		aux=$(echo $i)
	  		arq[$i]=$(echo "$aux\t")
	  	fi
	done
fi

zenity --info --text="$(echo ${arq[@]} )"
