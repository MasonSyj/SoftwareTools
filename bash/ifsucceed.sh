#! /bin/bash

# test $? -eq 0 && printf "Command succeed\n" || printf "Command failed\n

pwd
 
if [ $? -eq 0 ]; then
    echo "Command Executed Successfully"
else
    echo "Command Failed"
fi
