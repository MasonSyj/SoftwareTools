To replace the first occurrence of a pattern with a given string, use ${parameter/pattern/string}:
```
#!/bin/bash
firstString="I love Suzi and Marry"
secondString="Sara"
echo "${firstString/Suzi/"$secondString"}"    
# prints 'I love Sara and Marry'
```
To replace all occurrences, use ${parameter//pattern/string}:

```
message='The secret code is 12345'
echo "${message//[0-9]/X}"           
# prints 'The secret code is XXXXX'
```
