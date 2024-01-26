#!/bin/bash
function miFuncion(){
	suma=$(($1+$2));
	return $suma;
}
miFuncion 7 5
echo $?

function miFuncion2(){
	resta=$(($1-$2));
	echo $resta;
}
miFuncion2 7 3
