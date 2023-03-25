ls | grep -v "\." | xargs rm

find . -perm +100 -type f -delete

Use the find. What you want is this:

find . -type f -executable -exec rm '{}' \;

Removing everything without an extension can also be done:

find . -type f -not -iname "*.*" -exec rm '{}' \;

The former option does not delete the Makefile, and is thus to be preferred. I think kcwu's answer shows a nice way to improve the above using the -delete option :

find . -type f -executable -delete

find . -type f -not -iname "*.*" -delete
