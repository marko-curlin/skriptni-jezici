#!/bin/bash
proba="Ovo je proba"
echo $proba
lista_datoteka=`ls`
echo $lista_datoteka
proba3=$proba". "$proba". "$proba". "
echo $proba3
a=4
b=3
c=7
d=$(($((a+4))*b%c))
echo "(a + 4) * b % c = $d"
broj_rijeci=`wc -w *.txt 2>/dev/null | tail -n 1 | sed -r 's/.*([0-9]+).*/\1/'`
echo "Ukupan broj rijeci: ${broj_rijeci:=0}"
ls ~
cat /etc/passwd | grep "`cat /etc/shells`" | cut -d : -f 1,6,7
ps -eo pid,user,comm | cut -f 1,2,3