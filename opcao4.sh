echo "Digite um número"
read num
for ((i=0; i<=num; i++)); do    
  	if [ $(($i%2)) -eq 0 ];
  	then
  		echo "$i"
  	fi
done

