<<comment
Ex: 
	1) bash Problema10.sh 2 + 2
	retorna: 4

	2) bash Problema10.sh 2 "*" 3
	retorna: 6

	3) bash Problema10.sh 2 - 1
	retorna: 1

	4) bash Problema10.sh 10 / 5 
		retorna: 2

OBSERVAÇÃO: O algortimo so realiza divisão exata entre inteiros. Logo, 
	bash Problema10.sh 1 / 2 
	retorna: 0

comment 

if [ "$2" == "+" ];then
	echo $(($1+$3))
elif [ "$2" == "/" ];then
	echo $(($1/$3))
elif [ "$2" == "-" ];then
	echo $(($1-$3))
else
	echo $(($1*$3))
fi
