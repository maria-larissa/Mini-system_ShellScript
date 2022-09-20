echo -n "Digite o nome do arquivo: "
read arquivo
existe=$(echo "$arquivo")
tamanho=$(du -hsb "${arquivo}" | cut -d '/' -f1)

if [ -e "$existe" ]; then
	echo "O Arquivo existe e seu tamanho em bytes é $tamanho"
	echo ""
else
	echo "ARQUIVO NĀO EXISTE!"
	echo ""
fi