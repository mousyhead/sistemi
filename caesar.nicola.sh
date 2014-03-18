#!/bin/bash

alphabet=abcdefghjklmnopqrstuvwxyz
cipher=${alphabet:$2:26}${alphabet:0:$2}

echo $1 | tr $alphabet $cipher
