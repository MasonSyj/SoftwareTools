```
//What exactly is <() in bash (and =() in zsh)?

diff <(ls dirA) <(ls dirB)
```
This is called process substitution.It provides a way to pass the output of a command (list) to another command when using a pipe (|) is not possible. For example when a command just does not support input from STDIN or you need the output of multiple commands:
