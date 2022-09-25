saidas=$(zenity --forms  \
--title="      MANUAL DE INTRUÇÕES      " \
--text="Voce deverá informar dois números inteiros \ 
e será retornado qual o maior entre os dois \ 
e o valor da soma."  \
--separator="," \
--add-entry="Primeiro número" \
--add-entry="Segundo número") 
            
n1=$(echo $saidas | cut -d ',' -f1)
n2=$(echo $saidas | cut -d ',' -f2)

if [[ -z $n1 && -z $n2 ]];then
	exit
fi

if [[ -z $n1 || -z $n2 ]]; then
	zenity --info --title="Atenção" --text="Preencha todos os campos."
	bash opcoes/opcao1.sh
fi

if [ $n1 -gt $n2 ] 
then
	 maior=$(echo "O maior número é $n1.") 
else
	 maior=$(echo "O maior número é $n2.")
fi

zenity --info --width 250 \
--text="$maior \n A soma dos números é igual à $(($n1+$n2))."
