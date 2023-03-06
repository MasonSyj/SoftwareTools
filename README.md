# SoftwareTools
# Unit Website:
https://cs-uob.github.io/COMSM0085/


## When no man page for some commands:
UNSET MANPATH

echo "MANPATH=/usr/share/man" >> ~/.bashrc

sudo usermod -a -G users lining

it will add lining to the users group

however, mason's directory may belong to a group called masoneven though mason is also in the users group

then you should 

chown mason:users exampleFile

