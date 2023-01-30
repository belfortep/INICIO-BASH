#! /bin/bash
#chmod +x nombre_archivo para convvvertir un archivo en un prrograma en linux
# la linea de arriba del todo es para decir que se ejecute con el programa bash, podria poner no se, bin/node y que se ejecute con node
echo 'Hello World' > hello.txt
#un > para cambiar el texto del archivo, >> para añadir el string

#cat recibe una entrada del usuario

cat << unTexto
aca tengo
algo de texto
unTexto

#bash te pide que para las variables no tengan un espacio
edad=30
#esto es igual a if (edad >= 18)
if [ $edad -ge 18 ]
then
    echo "sos mayor de edad"
else
    echo "No sos mayor de edad :("
fi


numero=0
#necesita simbolo $ para interpretar el codigo
while [ $numero -lt 10 ]
do
    echo "$numero"
    numero=$(( numero + 1 ))
done

for i in 1 2 3 4 5
do
    echo "$i"
done

for i in {0..20}
do
    echo "$i"
done
#queres formas de escribir bucles for? aca tenes
for (( i=0; i < 10; i++ ))
do
    if [ $i -eq 5 ]
    then
        break
        echo "fin"
    fi

    echo "$i"
done


#este args @0 es  para que obtenga cualquier cantidad de parametros del usuario
args=("$@0")
#1,2,3,... para los distintos parametros
echo "me escribiste: ${args[0]} ${args[1]}"

#mira, si al ejecutar el comando ls -a me da 1 (que fue bien) guardame el resultado en ese archivo, si da 2 (error), en el otro archivo
ls -a 1>output.txt 2>error.txt
