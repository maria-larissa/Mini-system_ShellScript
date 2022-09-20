<<comment
	É necessário inserir os dados na seguinte ordem:
	1 - Data de início das aulas do semestre (ano/mês/dia)
	2 - Data de termino das aulas do semestre (ano/mês/dia)
	3 - O(s) número(s) equivalente aos dias da semana 
		"1" Segunda-feira
		"2" Terça-feira
		"3" Quarta-feira
		"4" Quinta-feira
		"5" Sexta-feira


	Ex:	 	bash Problema7.sh 2008/02/07 2008/07/05 1 3
	Deve retornar as seguintes datas (dia/mes/ano): 
		11/02/2008 13/02/2008 18/02/2008 20/02/2008 
		25/02/2008 03/03/2008 05/03/2008 ...
comment

echo ""
echo "A data de início do semestre é $1"
echo ""
echo "Todas as datas de aulas"

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

echo ""
echo "A data de termino do semestre é $2"
echo ""