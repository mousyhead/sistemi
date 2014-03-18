#!/bin/bash

res=0

for (( i=0; i<${#1}; i++ ))
do
  char=${1:i:1}
  case $char in
    a | e | i | o | u ) let res=$res+1;;
  esac
done

echo $res
