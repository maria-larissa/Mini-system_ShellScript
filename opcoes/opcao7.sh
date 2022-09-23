echo -e "\n A data de início do semestre é $1 \n"
echo "Todas as datas de aulas"

language=$LANG
lang=$(echo  ${language:0:2})

if [ $lang == 'en' ]; then

	if [ $3 -eq 1 ]; then
		dia_ex="Monday"
	elif [ $3 -eq 2  ]; then
		dia_ex="Tuesday"
	elif [ $3 -eq 3  ]; then
		dia_ex="Wednesday"
	elif [ $3 -eq 4  ]; then 
		dia_ex="Thursday"
	elif [ $3 -eq 5  ]; then
		dia_ex="Friday"
	fi

	aux_dia=$( date -d $1 '+%A')

	data=$(date -d $1 '+%Y/%m/%d')

	while [ $aux_dia != $dia_ex ]; do
		data=$(date -d "$data +1 days" '+%Y/%m/%d')
		aux_dia=$(date -d $data '+%A')
	done

	soma_dias=$(($4-$3))

	data_fi=$(date -d $2 '+%Y/%m/%d')
	data_ini=$(date -d $1 '+%Y/%m/%d')
	tem1=$(date -d $data_fi "+%s")
	tem2=$(date -d $data_ini "+%s")

	lim=$(( ($tem1 - $tem2)/ 604800))

	data2=$(date -d "$data +$soma_dias days" '+%Y/%m/%d')
	for (( i=1; $i <= lim; i++)); do
		echo "$data"
		echo "$data2"	
		data2="$(date -d "$data2 +1 weeks" '+%Y/%m/%d')"
		data="$(date -d "$data +1 weeks" '+%Y/%m/%d' )"
	done
fi


if [ $lang == 'pt' ]; then
	if [ $3 -eq 1 ]; then
		dia_ex="segunda"
	elif [ $3 -eq 2  ]; then
		dia_ex="terça"
	elif [ $3 -eq 3  ]; then
		dia_ex="quarta"
	elif [ $3 -eq 4  ]; then 
		dia_ex="quinta"
	elif [ $3 -eq 5  ]; then
		dia_ex="sexta"
	fi


	aux_dia=$( date -d $1 '+%A')

	data=$(date -d $1 '+%Y/%m/%d')

	while [ $aux_dia != $dia_ex ]; do
		data=$(date -d "$data +1 days" '+%Y/%m/%d')
		aux_dia=$(date -d $data '+%A')
	done

	soma_dias=$(($4-$3))

	data_fi=$(date -d $2 '+%Y/%m/%d')
	data_ini=$(date -d $1 '+%Y/%m/%d')
	tem1=$(date -d $data_fi "+%s")
	tem2=$(date -d $data_ini "+%s")

	lim=$(( ($tem1 - $tem2)/ 604800))

	data2=$(date -d "$data +$soma_dias days" '+%Y/%m/%d')
	for (( i=1; $i <= lim; i++)); do
		echo "$data"
		echo "$data2"	
		data2="$(date -d "$data2 +1 weeks" '+%Y/%m/%d')"
		data="$(date -d "$data +1 weeks" '+%Y/%m/%d' )"
	done

fi


echo -e "\nA data de termino do semestre é $2\n"