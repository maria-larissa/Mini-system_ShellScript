#!/bin/bash 
if [ $1 -gt $2 ] 
then
	echo "O maior número é $1." 
else
	echo "O maior número é $2."
fi

echo "A soma dos números é igual à $(($1+$2))."
