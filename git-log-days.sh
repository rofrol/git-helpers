#!/bin/bash
# http://stackoverflow.com/a/2979587/588759
# Generates changelog day by day
NEXT=$(date +%F)
echo "CHANGELOG"
echo ----------------------
git log --no-merges --format="%cd" --date=short --author=${1} | sort -u -r | while read DATE ; do
    echo
    echo [$DATE]
    GIT_PAGER=cat git log --no-merges  --author=${1} --format=" * %s" --since=$DATE --until=$NEXT
    NEXT=$DATE
done
