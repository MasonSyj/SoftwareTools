# GitActivity

Two Website that might be useful

https://stackoverflow.com/questions/47630950/how-can-i-switch-to-another-branch-in-git

https://stackoverflow.com/questions/57244094/git-push-when-it-ask-to-set-upstream-and-when-it-and-does-not

# Commands from Online

```
git clone --branch <branchname> <remote-repo-url> 

//clone from a remote respoitory and immediately change to specific branch (only one more move compared with general way)

git clone -b passwordless-auth --single-branch <remote-repo-url> 

//clone and track only a specific branch

git reset --hard origin/main 

//reset your remote branch to origin

git rm --cached path/to/file/filename

//if a file a already tracked but want to untrack, first step is to add to gitignore, second is to run the above commands.
```

```
##GitIgnore

*/*         #ignore all files in each directory

!*/*.c      #unignore .c files in each directory

!*/*.h      #unignore .h header files in each directory

!.gitignore #unignore .gitignore
```

# Online Git exercise

Created time: February 8, 2023 8:23 PM
Tags: Tools

```bash
//create a branch and then switch to it
git checkout -b newbranch
//or
git branch newbranch
git switch newbranch

-------------------------------------------

git merge newbranch //fetch na
//assume the HEAD is pointing to main
//then merge will init a new commit from main
```
![alt text](https://github.com/MasonSyj/SoftwareTools/blob/master/GitActivity/Merge.png?raw=true)

```bash
git rebase main //give tui
```

```bash
git checkout 78e3117 //HEAD is pointing to specific commit, not one branch
```

```bash
//for HEAD, pointing to certain commit 
git checkout main^ // last commit from main
git checkout main^^^ // last three commit from main
git checkout main~2 //last 2
git checkout main~4 //last 4
```

```bash
git branch -f branch1 branch2
// point branch1 to branch2
//branch2 can be branch2^^(branch2's last two)
```

```bash
git reset branch^
gti revert branch-
```

# Online Git exercise II

Created time: February 15, 2023 11:01 AM
Tags: Tools

```bash
git fetch
git rebase o/main side1
git rebase side1 side2
git rebase side2 side3
git rebase main side3
git push
//git rebase branch, current head will be under the branch
//git rebase branch1, branch2, branch1 will be under branch2
```

```bash
git branch -u o/main side 
git checkout -b side o/main 
// side will track remote's branch:main
```

```bash
//git push <remote> <place>
/**
git push origin main
git push origin foo

把这个命令翻译过来就是：

切到本地仓库中的“main”分支，获取所有的提交，再到远程仓库“origin”中找到“main”分支，
将远程仓库中没有的提交记录都添加上去，搞定之后告诉我。

我们通过“place”参数来告诉 Git 提交记录来自于 main, 要推送到远程仓库中的 main。
它实际就是要同步的两个仓库的位置。

需要注意的是，因为我们通过指定参数告诉了 Git 所有它需要的信息, 
所以它就忽略了我们所检出的分支的属性！
*/
```

```bash
//git push origin <source>:<destination>
这个参数实际的值是个 refspec，“refspec” 是一个自造的词，意思是 Git 能识别的位置（比如分支 foo 或者 HEAD~1）
if the destnation doesn't exist, git will help you create one
```

```bash
<place> 参数
如果你像如下命令这样为 git fetch 设置 的话：

git fetch origin foo

Git 会到远程仓库的 foo 分支上，然后获取所有本地不存在的提交，放到本地的 o/foo 上。

来看个例子（还是前面的例子，只是命令不同了）
```

```bash
git push origin :side
//side remote branch will be deleted
git fetch origin :bugFix
//bugFix local branch will be created
```

```bash
$ git fetch origin bar: foo

$ git fetch origin main:side

$ git merge foo

$ git merge side

-----------is equal to---------------

$ git pull origin bar: foo

$ git pull origin main: side

$ echo "level solved! type
```
