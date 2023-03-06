# SoftwareTools
# Unit Website:
https://cs-uob.github.io/COMSM0085/


## When no man page for some commands:
UNSET MANPATH

echo "MANPATH=/usr/share/man" >> ~/.bashrc

## Add/delete Add/remove a user and group operation
```
sudo useradd [username]

Replace "username" with the name you want to give the new user.

sudo passwd [username]

be prompted to enter and confirm the new password for the user.

sudo userdel [username]

Replace "username" with the name of the user you want to delete.

sudo userdel -r username

The -r option tells userdel to remove the user's home directory and mail spool as well.

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
```
sudo nano /etc/passwd

//then chage the corresponding shell to what you want
```
