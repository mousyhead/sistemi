#!/bin/bash

if [ $# = 0 ]
then
  input=0
  sum=0
  counter=-1
  while [ $input ]
  do
    let sum=$sum+$input
    let counter=$counter+1
    read -p 'Inserire dato: ' input
  done
else
  sum=`./sum.nicola.sh $*`
  counter=$#
fi

echo "scale=2;$sum/$counter" | bc
