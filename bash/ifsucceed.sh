#! /bin/bash

# test $? -eq 0 && printf "Command succeed\n" || printf "Command failed\n

if [ $? -eq '0' ]
then
   printf "Command succeed.\n"
else
   printf "Command failed.\n"
fi

