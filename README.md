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

## Issues Related to Linux System itself

The .bashrc file is a hidden script file containing various terminal session configurations. The file executes automatically in both interactive and non-interactive non-login shells.

* .bashrc
The .bashrc file is a hidden script file containing various terminal session configurations. The file executes automatically in both interactive and non-interactive non-login shells.

When running a non-login shell (subshell), the primary read configuration file is the /etc/bash.bashrc. The file contains system-wide configurations for non-login shells.

After, the shell searches for the ~/.bashrc configuration file for the specific user.

* .bash_profile
The .bash_profile file is a hidden script file with custom configurations for a user terminal session. The file automatically executes in Bash interactive login shells.

When running an interactive login shell, the system reads the following configuration file first:

* /etc/profile - Stores global configurations for login shells. The configurations apply to all users.

Next, the Bash shell searches for specific user configuration files in the following order:

* ~/.bash_profile

* ~/.bash_login

* ~/.profile

The first found file is read and executed.

The critical differences between .bashrc and .bash_profile are:

* .bashrc defines the settings for a user when running a subshell. Add custom configurations to this file to make parameters available in subshells for a specific user.

* .bash_profile defines the settings for a user when running a login shell. Add custom configurations to this file to make parameters available to a specific user when running a login shell.
