#!/bin/bash
mkdir 2
cd 2
num=0
rd='mktemp xxxx'
while [ $num -lt 10 ]
do
base64 < /dev/urandom | head -c 1000 > "$rd_$num".txt
num=$(( $num + 1 ))
done
ls -lah | grep 'random_text_*' | wc
