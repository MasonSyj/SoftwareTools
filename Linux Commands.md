# Linux Commands

Created time: February 28, 2023 3:38 PM
Last edited time: March 2, 2023 10:07 AM
Tags: Tools

```bash
######################### 1
man ls
man printf
######################### 2
sudo apk add npm
sudo npm install -g tldr
tldr ls
tldr whoami
######################### 3
ls /bin
ls -al /bin
######################### 4
cd fruits
cd JAVA
cd vagrant
######################### 5
pwd
######################### 6
mkdir fruits
mkdir dogs cars
mkdir -p fruits/apples // will generate fruits folder if it does not exist
######################### 7
rmdir fruits # the folder must be empty, othersise use:
rm -rf fruits
######################### 8
mv pear new_pear // do the function of rename
######################### 9
cp apple new_apple
cp -r apple apples // recursively copy the whoe folder
######################### 10
open . // open the current folder in the file manager(change into GUI)
open hello.c // open the C source code using default Text Editor
######################### 11
touch apple //create a new file called apple or update its timestamp
######################### 12
find . -name *.js
find . -type f -name src
######################### 13
ln recipes.txt newreceipes.txt
cat newreceipes.txt
recipes
rm recipes.txt
cat newreceipes.txt
recipes // still contain the original file content
######################### 14
ln -s recipes newrecipes.txt
######################### 15
gzip filename // will delete the original
gzip -c filename > filename.gz
gzip -k filename // k range from 1 to 9(slowest, better compression)
gzip filename1 filename2 
gzip -r foldername
######################### 16
tar -cf archive.tar file1 file2
tar -xf archive.tar
#c stands for create, f stands for write to file the archive
# x stands for extract
######################### 17
alias ll='ls -al' #type ll equals to ls -al
#to add permanatly, add to ~/.bashrc
######################### 18
cat file
cat file > file2
cat file >> file3
cat -n file
######################### 19
less file 
######################### 20
tail -f /var/log/system.log
tail -n 10 filename
tail -n +10 filename #start from the 10th line
######################### 21
wc 
6        47.        284 # lines, words, bytes, -l, -w, -c
######################### 22
grep -n printf hello.c
grep -nC printf hello.c # it will also output the before and after 5 lines
######################### 23
sort file 
sort -r file # reverse the order
sort --ignore-case -n -u #case insensitive, numeric order, unique
######################### 24
uniq
sort dogs.txt | uniq
sort dogs.txt | uniq -d #only duplicate lines
sort dogs.txt | uniq -u # non-duplicate lines
-c occurences
sort dogs.txt | uniq -c | sort -nr
######################### 25
diff file1 file2
-y compare line by line 
-u same style as git
-r recursively
######################### 26
echo "hello"
echo "${PATH}"
echo "$(ls -al)"
echo {1..5}
######################### 27
chown owner file
chown -R owner folder
chown owner:group file
chgrp group file
######################### 28
chmod
######################### 29
umask
umask -S
umask 002
umask g+r
######################### 30
du calculate the size
du -m  mb
du -g  gb
-h human readable sign
du -h folder | sort -nr
######################### 31
df disk usage information
df -h human readable
######################### 32
basename 
######################### 33
dirname return the directory name
######################### 34
ps ax a: other users process, x: not linked to any terminal
######################### 35
top display dynamic in real-time information
######################### 36
kill PID
######################### 37
killall programName
######################### 38
jobs
######################### 39
bg
######################### 40
fg
######################### 41
type pwd
type ls
type which
type bash
######################### 42
nohup
######################### 43
xargs
######################### 44
vim
vimtutor
#:q! quit without saving
#x deletes the character currently highlighted
#A end of the line
#0 start of the line
######################### 45
emacs another text editor
######################### 46
nano
######################### 47
whoami
######################### 48
su fred
su george
su vagrant
######################### 49
sudo
######################### 50
passwd username new_password
######################### 51
ping 
######################### 52
traceroute
######################### 53
clear
######################### 54
history
######################### 55
when assign:
TEST="test"
echo $TEST
#it will print test, but it won't work in a shell script as it is executed by a sub-shell which doesn't know TEST="test"
#so will need
export TEST="test"
######################### 56
crontab
######################### 57
uname
######################### 58
sed

```