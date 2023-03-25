#! /bin/bash

for i in 'ls *.c';
   do
      exec="$(basename "$i" .c)"
      echo "gcc $i -o "${exec}""
      gcc $i -o "${exec}"
      echo "${exec}"

      ./"${exec}"

done
