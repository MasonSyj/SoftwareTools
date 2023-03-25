#! /bin/bash

read -p "are you over 21 years old? Y/N " ANSWER
case "$ANSWER" in
   [yY] | [yE][eE][sS])
      echo "You can have a beer :)"
      ;;
   [nN] | [nN][oO])
      echo "Sorry, no drinking :)"
      ;;
   *)
      echo "Please enter y/yes or n/no"
      ;;
   esac

