#!/bin/bash

res=0

case $2 in
  1)
    let res=$1*$1
    ;;
  2)
    for (( i=0; i<$1; i++ ))
    do
      let res=$res+$1
    done
    ;;
  3)
    toadd=1
    for (( i=0; i<$1; i++ ))
    do
      let res=$res+$toadd
      let toadd=$toadd+2
    done
    ;;
  *)
    let res=$1**2
    ;;
esac

echo $res
