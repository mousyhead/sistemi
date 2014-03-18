#!/bin/bash

if [ $1 = 0 -o $2 = 0 ]
then
  echo 0
  exit
fi

if [ $1 -ge $2 ]
then
  M=$1
  m=$2
else
  M=$2
  m=$1
fi

let r=$M%$m

while [ $r != 0 ]
do
  M=$m
  m=$r
  let r=$M%$m
done

echo $m
