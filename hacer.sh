 # uso: hacer mips
 #		hacer 
CC=gcc
FLAGS="-c -std=c99"
PROGRAMA=conway

$CC $FLAGS conway.c
if [ "$1" == "mips" ]
then 
	echo "el then!"
	$CC $FLAGS vecinos.S
else 
	echo "el else!"
	$CC $FLAGS vecinos.c
fi
#for ARCHIVO in *.c
#do
#	if test -f $ARCHIVO
#	then
#		$CC $FLAGS $ARCHIVO
#	fi
#done
#
#if [ "$1" == "mips" ]
#then
#	echo "Está activado el flag mips"
#	for ARCHIVO in *.S
#	do
#		if test -f $ARCHIVO
#		then
#			echo "Compilado ${ARCHIVO}"
#			$CC $FLAGS $ARCHIVO
#		fi
#	done
#fi
ARCHIVOS=
for ARCHIVO in *.o
do
	ARCHIVOS="${ARCHIVOS} ${ARCHIVO}"
done

$CC ${ARCHIVOS} -o $PROGRAMA
echo "$CC ${ARCHIVOS} -o $PROGRAMA"

rm *.o

./conway 23 8 8 glider -o estado

echo "
"
