#!/bin/bash

res=0

for arg
do
  let res=$res+$arg
done

echo $res

