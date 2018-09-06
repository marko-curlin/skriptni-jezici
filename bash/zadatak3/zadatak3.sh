#!/bin/bash
#echo "Zapocimljem s izvodenjem skripte"
for file in `find -regextype egrep -regex '.*[[:digit:]]{4}-02-[[:digit:]]{2}.*'`
do
	#echo "Ulazim u for petlju"
	datum=`echo $file | sed -r 's/.*([[:digit:]]{4}-02-[[:digit:]]{2}).*/\1/'`
	echo "datum: $datum"
	echo "--------------------------------------------------"
	sed -r 's/.*"(.*)".*/\1/' $file | sort | uniq -c | sort -n -r
done