#! /bin/bash 

echo "Hello World!"

NAME="Mason"

#echo "My name is $NAME"

#read -p "Enter your name: " NAME

#echo "Hello $NAME, nice to meet you"


if [ "$NAME" == "Brad" ]
then
   echo "Nice to meet you, Brad."
elif [ "$NAME" == "Mason" ]
then
   echo "Nice to neet you, Mason."
else
   echo "Welcome"
fi
