#! /bin/bash

FILES=$(ls *.txt)
NEW="new"
for FILE in $FILES
   do 
      echo "Renameing $FILE to new-$FILE"
      mv $FILE $NEW-$FILE
done
