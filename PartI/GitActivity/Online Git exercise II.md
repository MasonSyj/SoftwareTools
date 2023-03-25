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