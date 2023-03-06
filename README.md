# SoftwareTools
# Unit Website:
https://cs-uob.github.io/COMSM0085/


## When no man page for some commands:
UNSET MANPATH

echo "MANPATH=/usr/share/man" >> ~/.bashrc

```
sudo usermod -a -G [group name] [username]

sudo usermod -a -G users lining

//however, mason's directory may belong to a group called masoneven though mason is also in the users group

//it will add lining to the users group

//then you should 

chown mason:users exampleFile

sudo gpasswd -d [username] [group name]

sudo gpasswd -d john developers

groups john

```

```
# Add shell-option to ~/.inputrc to enable case-insensitive tab completion

echo 'set completion-ignore-case On' >> ~/.inputrc
```
