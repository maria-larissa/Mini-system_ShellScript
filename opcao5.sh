echo -n "Digite o nome do arquivo: "
#/run/media/larissa/Larissa's Files/Estudos/3º semestre/Lab. programacao/Shellscript/Scripts/comandos_importantes.sh
read arquivo
existe=$(echo "$arquivo")
tamanho=$(du -hsb "${arquivo}" | cut -d '/' -f1)

if [ -e "$existe" ]; then
	echo "O tamanho do arquivo em bytes é $tamanho"
	echo ""
else
	echo "ARQUIVO NĀO EXISTE!"
	echo ""
fi