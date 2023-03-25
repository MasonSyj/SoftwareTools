```
1. Search any line that contains the word in filename on Linux:

grep 'word' filename

2. Perform a case-insensitive search for the word ‘bar’ in Linux and Unix:

grep -i 'bar' file1

3. Look for all files in the current directory and in all of its subdirectories in Linux for the word ‘httpd’:

grep -R 'httpd' .

4. Search and display the total number of times that the string ‘nixcraft’ appears in a file named frontpage.md:

grep -c 'nixcraft' frontpage.md
```

```
grep 'word' filename
 
# Interpret PATTERNS as fixed strings, not regular expressions (regex) when fgrep used.
grep -F 'word-to-search' file.txt
grep -F 'pattern' filename
 
grep 'word' file1 file2 file3
grep 'string1 string2'  filename
cat otherfile | grep 'something'
command | grep 'something'
command option1 | grep 'data'
grep --color 'data' fileName
grep [-options] pattern filename
grep -F [-options] words file
```
