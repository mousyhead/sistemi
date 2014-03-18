#!/bin/bash

if [ $# = 1 ]
then
  phrase=$1
else
  read phrase
fi

echo `./caesar.nicola.sh $phrase 3`
