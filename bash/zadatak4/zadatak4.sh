#!/bin/bash
slike=$1
odrediste=$2
#echo $slike $odrediste
mkdir odrediste &> /dev/null
for file in `ls slike`
do
	#echo $file
	datum=`stat -c %y slike/$file | sed -r 's/([[:digit:]]{4}-[[:digit:]]{2}).*/\1/'`
	mkdir $odrediste/$datum &> /dev/null
	mv $slike/$file $odrediste/$datum/$file
done