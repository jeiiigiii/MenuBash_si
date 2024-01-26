#!/bin/bash
cad1="carmen"
cad2="pep"
echo $cad1
echo $cad2
if [ $cad1 /< $cad2 ]
then
	echo "La cadea es menor" 
else
	echo "la cadena es mayor" 
fi
