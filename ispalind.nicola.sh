#!/bin/bash

rev=`echo $1 | rev`

if [ $1 != $rev ]
then
  exit 2;
fi
