#!/bin/bash

pwd=$PWD
cd $1

counter=1

for file in *
do
  sentence=""

  for word in `echo $file | tr [:upper:] [:lower:]`
  do
    sentence="$sentence ${word^}"
  done
  
  mv "$file" "./$counter.$sentence"
  let counter=$counter+1
done

cd $pwd
