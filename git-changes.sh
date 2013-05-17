# http://stackoverflow.com/questions/6240808/count-line-changes-with-git

#git log --stat --author $(git config --get user.email) --since="last year" --until="last month" | awk -F',' '/files? changed/ {
#echo "2", ${1}
#    print "Files Changed,Insertions,Deletions,Lines changed"
git log --stat --author="${1}" | awk -F',' '/files? changed/ {
    files += $1
    insertions += $2
    deletions += $3
}
END {
    print  "\"'"$1"'\"," files "," insertions "," deletions "," insertions + deletions
}'
