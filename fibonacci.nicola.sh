#!/bin/bash

prev1=0
prev2=1

for (( i=0; i<$1; i++ ))
do
  echo $prev2
  temp=$prev1
  prev1=$prev2
  let prev2=$prev2+$temp
done
