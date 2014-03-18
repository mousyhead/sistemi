#!/bin/bash

let hour=$1/3600
let min=$1%3600/60
let sec=$1%3600%60

echo "$hour"h "$min"m "$sec"s
