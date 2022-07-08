@@ -3,10 +3,15 @@ mkdir multi_copia
cp ../data/multi/*1.txt multi_copia
#Ver el numero de columnas que tiene cada archivo 
archivos=multi_copia/*1.txt
for c in $archivos
for juleth in $archivos
do
columna=`cat $c | head -n 1 | tr -d " " | tr -d "\n" | wc -c`
echo "El numero de columnas de $c es $columna"
done >> multi_copia/for_if.txt
C=$( head -n1 "$juleth" |grep -o " " | wc -l ) 
if [ $(( "x" % 2 )) -eq 0 ] #para ver si son divisibles para dos, se designa si es par o impar 
then
echo "PAR: $juleth tiene $C columnas" >> multi_copia/for_if.txt #aqui es par
else
echo "IMPAR: $juleth tiene $C columnas" >> multi_copia/for_if.txt #aqui es impar
fi
done
