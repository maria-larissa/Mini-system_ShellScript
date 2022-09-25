saida=$(zenity --forms\
--title="MANUAL DE INTRUÇÕES"\
--text="Você deverá informar as datas de inicio e fim do semestre e os dias da semana em que\nhaverão aula da disciplina será retorna todas as datas que o laboratório deverá ser\nreservado durante sesmestre.\n\
\t\t\t1 - Segunda-feira\n \
\t\t\t2 - Terça-feira\n \
\t\t\t3 - Quarta-feira\n \
\t\t\t4 - Quinta-feira\n \
\t\t\t5 - Sexta-feira\n \
Certifique-se de que as datas estão no formato (ano/mes/dia) e os ids equivalentes\naos dias da semana são inteiro. \
Ex: \n\t2008/02/07 \n\t2008/07/05 \n\t1 \n\t3\n \
\tDeve retornar as seguintes datas:\n \
\t\t2008/11/02 2008/13/02 2008/18/02 2008/20/02\n \
\t\t2008/25/02 2008/27/02 2008/03/03/ 2008/05/03 ..." \
--separator="," \
--add-entry="Digite a data de inicio do semestre" \
--add-entry="Digite a data de fim do semestre" \
--add-entry="Digite o id do 1º dia da semana" \
--add-entry="Digite o id do 2º dia da semana")

inicio=$(echo $saida | cut -d ',' -f1)
final=$(echo $saida | cut -d ',' -f2)
n1=$(echo $saida | cut -d ',' -f3)
n2=$(echo $saida | cut -d ',' -f4)

if [[ -z $inicio && -z $final && -z $n1 && -z $n2 ]]; then
	exit
	
elif [[ -z $inicio || -z $final || -z $n1 || -z $n2 ]]; then
	zenity --info --title="Atenção" --text="Preencha todos os campos corretamente!"
	bash opcoes/opcao7.sh
		 
else
	language=$LANG
	lang=$(echo  ${language:0:2})

	if [ $lang == 'en' ]; then

		if [ $n1 -eq 1 ]; then
			dia_ex="Monday"
		elif [ $n1 -eq 2  ]; then
			dia_ex="Tuesday"
		elif [ $n1 -eq 3  ]; then
			dia_ex="Wednesday"
		elif [ $n1 -eq 4  ]; then 
			dia_ex="Thursday"
		elif [ $n1 -eq 5  ]; then
			dia_ex="Friday"
		fi

		aux_dia=$( date -d $inicio '+%A')

		data=$(date -d $inicio '+%Y/%m/%d')

		while [ $aux_dia != $dia_ex ]; do
			data=$(date -d "$data +1 days" '+%Y/%m/%d')
			aux_dia=$(date -d $data '+%A')
		done

		soma_dias=$(($n2-$n1))

		data_fi=$(date -d $final '+%Y/%m/%d')
		data_ini=$(date -d $inicio '+%Y/%m/%d')
		tem1=$(date -d $data_fi "+%s")
		tem2=$(date -d $data_ini "+%s")

		lim=$(( ($tem1 - $tem2)/ 604800))

		k=0
		data2=$(date -d "$data +$soma_dias days" '+%Y/%m/%d')
		for (( i=1; $i <= lim; i++)); do
			aux1=$(echo $data)
			datas[$k]=$(echo "$aux1\t\t")
			aux2=$(echo $data2)
			datas[$k+1]=$(echo "$aux2\t\t")		
			data2="$(date -d "$data2 +1 weeks" '+%Y/%m/%d')"
			data="$(date -d "$data +1 weeks" '+%Y/%m/%d' )"
			k=$((k+2))
		done
	fi


	if [ $lang == 'pt' ]; then
		if [ $n1 -eq 1 ]; then
			dia_ex="segunda"
		elif [ $n1 -eq 2  ]; then
			dia_ex="terça"
		elif [ $n1 -eq 3  ]; then
			dia_ex="quarta"
		elif [ $n1 -eq 4  ]; then 
			dia_ex="quinta"
		elif [ $n1 -eq 5  ]; then
			dia_ex="sexta"
		fi
		
		echo "aqui"

		aux_dia=$( date -d $inicio '+%A')

		data=$(date -d $inicio '+%Y/%m/%d')

		while [ $aux_dia != $dia_ex ]; do
			data=$(date -d "$data +1 days" '+%Y/%m/%d')
			aux_dia=$(date -d $data '+%A')
		done

		soma_dias=$(($n1-$n2))

		data_fi=$(date -d $final '+%Y/%m/%d')
		data_ini=$(date -d $inicio '+%Y/%m/%d')
		tem1=$(date -d $data_fi "+%s")
		tem2=$(date -d $data_ini "+%s")

		lim=$(( ($tem1 - $tem2)/ 604800))

		k=0
		data2=$(date -d "$data +$soma_dias days" '+%Y/%m/%d')
		for (( i=1; $i <= lim; i++)); do
			aux1=$(echo $data)
			datas[$k]=$(echo "$aux1\t\t")
			aux2=$(echo $data2)
			datas[$k+1]=$(echo "$aux2\t\t")	
			data2="$(date -d "$data2 +1 weeks" '+%Y/%m/%d')"
			data="$(date -d "$data +1 weeks" '+%Y/%m/%d' )"
			k=$((k+2))
		done
	fi

	zenity --info \
	--text="A data de início do semestre é $inicio.\n 
	Todas as datas de aulas:\n $(echo ${datas[@]}) \n 
	A data de termino do semestre é $final\n"

fi
