#!/bin/bash

for arg
do
  case $arg in
    -f )
      fflag=0
    ;;
    * )
      num=$arg
    ;;
  esac
done


fact=()
let half=$num/2

for (( i=2; i<=$half; i++ ))
do
  while [ $(($num % $i)) = 0 ]
  do
    if [ $fflag ]
    then
      fact+=($i)
    else
      echo $i
    fi
    let num=$num/$i
  done
done

if [ ! $fflag ]
then
  exit
fi

placeholder=0

for i in ${fact[@]}
do
  if [ $i = $placeholder ]
  then
    let counter=$counter+1
  else
    res="$res$counter $i^"
    counter=1
    placeholder=$i
  fi
done

res="$res$counter"

echo $res
