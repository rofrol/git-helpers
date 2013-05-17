file=${1}
git rm --cached -- ${file}
#git reset -- ${file}
git co HEAD -- ${file}
