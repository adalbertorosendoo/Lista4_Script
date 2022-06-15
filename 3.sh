#!/bin/bash

arg=""
while true; do
	echo "====== MENU ======
r - Digite um nome de um arquivo que será processado.
a - Remova todas as letras do arquivo.
b - Remova todos os dígitos do arquivo.
c - Subistitua todos os caracteres que não são letras nem dígitos do arquivo por $.
q - Saia do Script.
"
read -p "Digite uma opção: " opc
case "${opc}" in "r"|"R")
	read -p "Digite o arquivo: " a
	arg="$a"
	;;
"a"|"A")
	sed 's/[a-zA-Z]*//g' "$arg" > "bif"
	echo "$(<bif)" > "$arg"
	rm "bif"
	;;
"b"|"B")
	sed 's/[0-9]*//g' "$arg" > "bif"
	echo "$(<bif)" > "$arg"
	rm "bif"
	;;
"c"|"C")
	sed 's/[^A-Za-z0-9_.;]/$/g' "$arg" > "bif"
	echo "$(<bif)" > "$arg"
	rm "bif"
	;;
"q"|"Q")
	break
	;;
*) echo "Opção inválida." ;;
esac
done

