if [ "$2" == "+" ]; then
	echo "Resultado: $(($1+$3))"
elif [ "$2" == "/" ]; then
	echo "Resultado: $(($1/$3))" 
elif [ "$2" == "-" ]; then
	echo "Resultado: $(($1-$3))"
else
	echo "Resultado: $(($1*$3))"
fi
