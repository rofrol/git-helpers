#!/bin/bash
#http://stackoverflow.com/questions/9660608/how-can-i-check-if-a-directory-is-on-the-path-in-bash

#wget -q -O - "https://raw.github.com/rofrol/git-helpers/master/set-git-val.bash" | bash && . ~/.bashrc
#or
#curl "https://raw.github.com/rofrol/git-helpers/master/set-git-val.bash" | bash && . ~/.bashrc

#testing:
#export PATH="/bin:/usr/bin" && export HOME=/home/r.frolow/tmphome && curl https://raw.github.com/rofrol/git-helpers/master/set-git-val.bash | bash && . ~/.bashrc
dir=$HOME/bin
echo $dir

if [ ! -d "$dir" ]; then
    echo "creating dir $dir"
    mkdir $dir
fi

if [[ :$PATH: != *:"$dir":* ]] ; then
    echo "adding \$HOME/bin to \$PATH"
    echo "PATH=\$PATH:\$HOME/bin" >> ~/.bashrc
fi

cd $dir && wget https://raw.github.com/rofrol/git-helpers/master/git-val && chmod +x $dir/git-val
