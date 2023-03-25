# -eq
# -ne
# -gt
# -lt
# -le

#! /bin/bash

NUM1=3
NUM2=5

if [ "$NUM1" -gt "$NUM2" ]
then
   echo "$NUM1 is greater than $NUM2"
else
   echo "$NUM2 is greater than $NUM1"
fi
