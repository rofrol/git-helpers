# http://www.cyberciti.biz/tips/handling-filenames-with-spaces-in-bash.html
SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
#for i in `git log --format='%aN' | sort -u` ; do
echo "Author,Files Changed,Insertions,Deletions,Lines changed"
#for i in `git shortlog -s | cut -c8- | sort -u` ; do
for i in `git log --format='%ae' $1 | sort -u` ; do
    #echo "1", ${i}
    ~/git-changes.sh "${i}"
done
# restore $IFS
IFS=$SAVEIFS
