#!/bin/bash

let half=$1/2

for (( i=2; i<=$half; i++ ))
do
  if [ $(($1 % $i)) = 0 ]
  then
    exit 2
  fi
done
