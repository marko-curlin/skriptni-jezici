#!/bin/bash
kazalo=${!#}
argv=$#
mkdir $kazalo &> /dev/null && echo "Kreirano je kazalo $kazalo."
for i in `seq 1 $((argv-1))`
do
	arg=${!i}
	cp "$arg" "$kazalo/$arg"
done