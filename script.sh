#!/bin/bash

# Tipos de variables: Universal -> Numero, Bool o Cadena
n1=10
n2=7
echo "El valor de n1 es $n1"

# Estructuras de control condicionales 
# Operadores condicionales 
#< (-lt), >(-gt), <=(-le), =>(-ge), == (-eq), !=(-ne)
if [[ $n1 -gt $n2 ]]; then
   echo "La sentencia es verdadera $n1 $n2"
else
   echo "La sentencia es falsa  $n1 $n2"

fi

# Todo programa regresa un valor, si es exitosos es 0
ls
res=$?
echo "El resultado de la ejecucion es $res"
ls
if [[ $? -eq 0 ]]; then
   echo "La sentencia se ejecuto correctamente"
else
   echo "La sentencia fallo"
fi

# Operadores manipular archivos 
# -e Si un archivo o carpeta existe.
# -d si es una carpeta
# -r -w -x (si ouede leer, escribir o eejecutar)
# -s si el archivo esta vacio.
file="./file-demo"

if [[ -s $file ]]; then
   echo "El archivo contiene algo."
else
   echo "El archivo esta vacio."
fi

#Operadores logicos AND (&&) OR (||)
if [[ -r $file ]] && [[ -x $file ]]; then 
    echo "El archivo se puede leer y ejecutar"
else
    echo "El archivo no se puede leer ni ejecutar"
fi

# Estructura de control case
# $ = array donde $# ($1, $2, $3.. $n) -h hola
case $1 in 
    hola )
        echo "Bienvenido"
    ;;
    adios )
        echo "Adios"
    ;;
    *)
        echo "No entiendo lo que dices"
    ;;
esac

# Estructuras Iterativas
#While
user=""
while [[ $user != "admin" ]];  do
   read -p  "¿Cual es tu usario?" user
done

#For 
for i in {1..5}; do
    echo "el numero es $i"
done

for ((i=0; i<5; i++)); do
    echo "* el numero es $i"
done

invitados=(pedro juan david maria lulu ivan)
for  invitados in ${invitados[@]}; do
   echo "Hola $invitados"
done

# Funciones 
suma(){
    echo "Hola desde la función suma." 
}

resta(){
    echo $(( $1 - $2 ))
}

suma
total=$(resta 9 4)
echo "El total es $total"
