echo -e "A data de início do semestre é $1\n\n"
echo "Todas as datas de aulas"

if [ "$3" == 1 ]; then
	dia_ex="Monday"	
	dia_ex2="Segunda"
elif [ "$3" == 2  ]; then
	dia_ex="Tuesday"
	dia_ex2="Terça"
elif [ "$3" == 3  ]; then
	dia_ex="Wednesday"
	dia_ex2="Quarta"
elif [ "$3" == 4  ]; then 
	dia_ex="Thursday"
	dia_ex2="Quinta"
elif [ "$3" == 5  ]; then
	dia_ex="Friday"
	dia_ex2="Sexta"
fi

aux_dia=$( date -d $1 '+%A')

data=$(date -d $1 '+%Y/%m/%d')

while [ $aux_dia != $dia_ex ]; do
	data=$(date -d "$data +1 days" '+%Y/%m/%d')
	aux_dia=$(date -d $data '+%A')
done


while [ $aux_dia != $dia_ex2 ]; do
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

echo ""
echo "A data de termino do semestre é $2"
echo ""
