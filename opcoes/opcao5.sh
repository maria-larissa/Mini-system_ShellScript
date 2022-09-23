echo -n "Digite o nome do arquivo: "
read arquivo
existe=$(echo "$arquivo")
tamanho=$(du -hsb "${arquivo}" | cut -d '/' -f1)

if [ -e "$existe" ]; then
	echo "O Arquivo existe e seu tamanho em bytes é $tamanho"
else
	echo -e "\033[01;31mARQUIVO NĀO EXISTE!\033[00;37m"
fi