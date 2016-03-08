# git-helpers

Some git helper scripts for workflow

## Cherry-pick some changes but don't add it to index. Helpful when you have to modify some files constantly but don't want them to be commited

`git cpr <ref>`

## Update some branch without switching to it

`git f <branch>`

## update specified branch, rebase on it, checkout to it, merge previous branch, push, delete prev branch on local and origin

`git m <branch>`

## Stash changes, checkout, stash pop

`git c <ref>`

## To make script executable under windows (--add when it's a new file)

`git update-index --add --chmod=+x <file>`

http://stackoverflow.com/questions/6476513/git-file-permissions-on-windows
