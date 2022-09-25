saida=$(zenity --forms \
--title="MANUAL DE INTRUÇÕES" \
--text="Você deverá infromar o nome de um arquivo ,com a extensão,\ne será verificado se existe, caso sim também será retornado o\nseu tamaho em bytes." \
--add-entry="Digite o nome do arquivo")

if [ -z $saida ]; then
	exit
else
	existe=$(echo "$saida")
	echo $(du -hsb "$saida")
	tamanho=$(echo $(du -hsb "$saida") | cut -d ' ' -f1)

	if [ -e "$existe" ]; then
		arq=$(echo "O Arquivo existe e seu tamanho em bytes é $tamanho")
		zenity --info --width 250 \
		--text="$arq"
	else
		arq1=$(echo -e "ARQUIVO NĀO EXISTE!")
		zenity --error --width 200\
		--text="$arq1"
	fi
	
fi
