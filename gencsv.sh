#!/bin/bash
start=$1
end=$2
filename="inputFile"

rm -f $filename
touch $filename

for i in $(seq $start $end); do
	  echo "$i, $((RANDOM % 1000))" >> $filename
  done

