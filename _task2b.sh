#!/bin/bash
mkdir 2
cd 2
num=0
while [ $num -lt 10 ]
do
rd=$(cat /dev/urandom | tr -cd 'a-z' | head -c 5)
base64 < /dev/urandom | head -c 1000 > "$rd _$num".txt
num=$(( $num + 1 ))
done
