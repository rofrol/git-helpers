# http://stackoverflow.com/questions/953481/restore-a-deleted-file-in-a-git-repo
file=$1
git checkout $(git rev-list -n 1 HEAD -- "$file")^ -- "$file"
