#!/bin/bash
writefile="$1"
writestr="$2"
if [ $# -ne 2 ];
then
	echo "Error: this function should take 2 arguments!"
	exit 1
fi

writedir=$(dirname "$writefile")
if [ ! -d "$writedir" ];
then
	mkdir -p "$writedir"
fi
echo "$writestr" > "$writefile"
