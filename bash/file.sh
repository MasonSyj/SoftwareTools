#! /bin/bash

FILE="test.txt"
if [ -f "$FILE" ]
then
   echo "$FILE is a file"
else
   echo "$FILE is not a file"
fi


if [ -e "$FILE" ]
then 
   echo	"$FILE exist"
else
   echo	"$FILE doesn't exist"
fi


