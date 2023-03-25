Multiple ways, a selection:

str=abc.out

Shell:

echo ${str%.*}

Grep:

echo $str | grep -o '^[^\.]*'

Sed:

echo $str | sed -E 's/(.*?)\..*/\1/'

Awk:

echo $str | awk -F. '{print $1}'

-F. means split the string by . and $1 means the first column.

Cut:

echo $str | cut -d. -f1

All output:

abc
