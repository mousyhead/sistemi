#!/bin/bash

if [ $(($1 % 400)) = 0 ] || [ $(($1 % 100)) != 0 -a $(($1 % 4)) = 0 ]
then
  exit 0;
else
  exit 1;
fi
