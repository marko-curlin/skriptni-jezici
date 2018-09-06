#!/bin/bash
if [ $# -ne 1 ]; then
	echo "There needs to be exactly one argument!"
	exit 1
fi
input=$1
ARRAY[0]=0
while read line; do
	length=$(($(echo $line | wc -m)-1))
	if [ -z "${ARRAY[length]}" ]; then
		ARRAY[length]=1
	else
		ARRAY[length]=$((ARRAY[length] + 1))
	fi
done < $input
for length in `seq 1 25`
do
	if [ -n "${ARRAY[length]}" ]; then
		echo $length ${ARRAY[length]}
	fi
done