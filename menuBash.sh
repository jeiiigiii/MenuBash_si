#!/bin/bash

function euroDolares() {
    dolares=$(($1 / $2))
    echo "El cambio de euro a dolar es: $dolares"
}

function dolaresEuro() {
    euros=$(($1 * $2))
    echo "El cambio de dolar a euro es: $euros"
}

function euroYen() {
    yen=$(($1 / $2))
    echo "El cambio de euro a yen es: $yen"
}

function percorreFicheiro() {
    for file in "$ruta"/*
    do
        echo $file
        if [ -d "$file" ]; then
            echo "Es un directorio: $file"
        else
            echo "Es un archivo: $file"
        fi
    done
}

function menu() {
    echo "1-Ingresar cantidad"
    echo "2-Cambio de divisa Euro/dolar"
    echo "3-Cambio de divisa Dolar/Euro"
    echo "4-Cambio de divisa Euro/YEN"
    echo "5-Recorrer ruta y Comparador"
    echo "6-Salir"
}

function ingresarDivisa() {
    read -p "Ingrese un numero:" num1
    read -p "Ingrese otro numero:" num2
}

function ingresarRuta() {
    read -p "Ingresa tu ruta:" ruta
}

echo "Bienvenido a la calculadora de cambio de divisa y otras vainas"
opcion=""

while [ "$opcion" != 6 ]; do
    clear
    sleep 1
    menu
    read -p "Ingrese su opción (1-6): " opcion

    case $opcion in
        1)
            ingresarDivisa
            ;;
        2)
            ingresarDivisa
            euroDolares "$num1" "$num2"
            ;;
        3)
            ingresarDivisa
            dolaresEuro "$num1" "$num2"
            ;;
        4)
            ingresarDivisa
            euroYen "$num1" "$num2"
            ;;
        5)
            ingresarRuta
            percorreFicheiro
            ;;
        6)
            echo "Saliendo del programa. ¡Hasta luego!"
            ;;
        *)
            echo "Opción no válida. Intente de nuevo."
            ;;
    esac
done
