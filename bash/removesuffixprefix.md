
Here's how to do it with the # and % operators in Bash.

$ x="/foo/fizzbuzz.bar"

$ y=${x%.bar}

$ echo ${y##*/}

fizzbuzz

$ {x%.bar} could also be ${x%.*} to remove everything after a dot or ${x%%.*} to remove everything after the first dot.

Example:

$ x="/foo/fizzbuzz.bar.quux"

$ y=${x%.*}

$ echo $y

/foo/fizzbuzz.bar

$ y=${x%%.*}

$ echo $y

/foo/fizzbuzz

  
   65  z="/foo/bristol.uk"
   
   66  y=${x%.uk}
   
   67  echo $y
   
   68  z=${y#/}
   
   69  echo $z
   
   70  z=${y#/}
   
   71  echo $z
   
   72  t=${z#/}
   
   73  echo $t
   
   74  t=${z##*/}
   
   75  echo $t
   
   76  echo $z
   
   77  t=${z#*/}
   
   78  echo $t
   
   79  history
   
   80  history | tail -n 15 >> removesuffixprefix.sh
