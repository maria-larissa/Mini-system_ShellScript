saida=$(zenity --forms \
			--title="MANUAL DE INTRUÇÕES" \
			--text="Você deverá informar dois numeros INTEIROS e um operador \nartimético, como se tivesse utilizando uma calculadora, será\n retornado o resultado da operação.\n\nEx: 2 + 6\nResultado: 8" \
			--separator="," \
			--add-entry="Digite um numero" \
			--add-entry="Digite o operador" \
			--add-entry="Digite um numero")
			
num1=$(echo $saida | cut -d ',' -f1)
operador=$(echo $saida | cut -d ',' -f2)
num2=$(echo $saida | cut -d ',' -f3)

if [[ -z $num1 && -z $operador && -z $num2 ]];then
	exit
fi

if [[ -z $num1 || -z $operador || -z $num2 ]];then
	zenity --info --title="Atenção" --text="Preencha todos os campos."
	bash opcoes/opcao11.sh
fi

if [ "$operador" == "+" ]; then
	zenity --info --text="A soma $num1 + $num2 é igual à $(($num1+$num2))."
elif [ "$operador" == "/" ]; then
	zenity --info --text="A divisão $num1/$num2 é igual à $(($num1/$num2))." 
elif [ "$operador" == "-" ]; then
	zenity --info --text="A subtração $num1-$num2 é igual à $(($num1-$num2))."
elif [ "$operador" == "*" ]; then
	zenity --info --text="A multiplicação $num1*$num2 é igual à $(($num1*$num2))."
elif [ -z $operador ]; then
	exit
else
	zenity --error --text="Operador inválido!"
	bash opcoes/opcao11.sh
fi
