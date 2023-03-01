# SoftwareTools
# Unit Website:
https://cs-uob.github.io/COMSM0085/


## When no man page for some commands:
UNSET MANPATH

echo "MANPATH=/usr/share/man" >> ~/.bashrc

## Git Resources
Git Book: https://git-scm.com/book/en/v2

Git Reference: https://git-scm.com/docs

Starter: https://phoenixnap.com/kb/how-to-use-git

Git clone specific branch: https://chinese.freecodecamp.org/news/git-clone-branch-how-to-clone-a-specific-branch/

Reset to Remote Head: https://www.freecodecamp.org/news/git-reset-to-remote-head-how-to-reset-a-remote-branch-to-origin/

Difference between HEAD and Master: https://www.tutorialspoint.com/what-is-the-difference-between-head-and-master-in-git

Two Website that might be useful

https://stackoverflow.com/questions/47630950/how-can-i-switch-to-another-branch-in-git

https://stackoverflow.com/questions/57244094/git-push-when-it-ask-to-set-upstream-and-when-it-and-does-not

sudo usermod -a -G users lining

it will add lining to the users group

however, mason's directory may belong to a group called masoneven though mason is also in the users group

then you should 

chown mason:users exampleFile
