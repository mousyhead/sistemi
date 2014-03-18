#!/bin/bash

if [ $2 -lt 1 -o $2 -gt 12 ]
then
  exit 2
fi

days=`./dayspermonth.nicola.sh $2 $3`

if [ $1 -lt 1 -o $1 -gt $days ]
then
  exit 3
fi
