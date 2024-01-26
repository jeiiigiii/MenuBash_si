#!/bin/bash
usuarioConectado=`whoami`
echo "el usuario conectado  es:" $usuarioConectado
echo "Quieres cambiar el nombre:"
read nuevoNombre
if [ $nuevoNombre -z ]
then 
	 echo "Su usuario es:" $usuarioConectado

else
	echo "Su nuevo nombre es: " $nuevoNombre
fi
