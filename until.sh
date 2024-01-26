#!/bin/bash

i=0
until (( i >=8 ))
do
	echo $i
	sleep 1 #Para hacer el efecto de espera
	((i++)) #Importante
done
