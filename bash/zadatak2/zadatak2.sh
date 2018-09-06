#!/bin/bash
grep -i "banana\|jabuka\|jagoda\|dinja\|lubeinca" namirnice.txt
grep -v -i "banana\|jabuka\|jagoda\|dinja\|lubeinca" namirnice.txt > ne-voce.txt
grep -r -E [[:upper:]]{3}[[:digit:]]{6} ~/projekti
find . \( -mtime +7 -o -mtime -14 \)
for i in {1..15}; do echo $i; done