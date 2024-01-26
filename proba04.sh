#!/bin/bash
read -p "Introduce o nome do ficheiro: " f
if [ -e $f ]
then 
echo "O ficheiro existe"
	if [ -s $f ]
	then 
		echo "Oficheiro non esta baleiro"
	else
		echo "O ficheiro esta baleiro"
	fi
else
	echo "Ese ficheiro no existe"
fi
