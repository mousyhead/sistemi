#!/bin/bash

if [ $3 -gt $6 ] || [ $3 = $6 -a $2 -gt $5 ] || [ $3 = $6 -a $2 = $5 -a $1 -gt $4 ]
then
  Y=$3
  M=$2
  D=$1
  y=$6
  m=$5
  d=$4
else
  Y=$6
  M=$5
  D=$4
  y=$3
  m=$2
  d=$1
fi

let res=$D-$d

for (( i=$m; i<$M; i++ ))
do
  days=`./dayspermonth.nicola.sh $i $y`
  let res=$res+$days
done

for (( i=$y; i<$Y; i++ ))
do
  if `./isleap.nicola.sh $i`
  then
    let res=$res+366
  else
    let res=$res+365
  fi
done

echo $res
