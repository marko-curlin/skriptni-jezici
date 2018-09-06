#!/bin/bash
kazalo=$1
regex=$2
suma=0
echo "Pocetno kazalo: $kazalo"$'\n'"Uzorak za datoteke: $regex"
find $kazalo -type d | grep -v /\\. > temp
while read dir;
do
	for file in `ls -p "$dir" | grep -v / 2> /dev/null`
	do
		if [[ $file = $regex ]]; then
			suma=$((suma+$(wc -l "$dir/$file" | cut -d " " -f 1)))
		fi
	done
done < temp
rm temp
echo "Ukupan broj redaka: $suma"