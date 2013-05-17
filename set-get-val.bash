#!/bin/bash
#http://stackoverflow.com/questions/9660608/how-can-i-check-if-a-directory-is-on-the-path-in-bash
home_bin=$HOME/bin

if [ ! -d "$home_bin" ]; then
    echo "creating dir $home_bin"
    mkdir $home_bin
fi

if [[ :$PATH: != *:"$home_bin":* ]] ; then
    echo "adding \$HOME/bin to \$PATH"
    echo "PATH=$PATH:$HOME/bin" > ~/.bashrc
fi

cd $home_bin && wget https://raw.github.com/rofrol/git-helpers/master/get-val && chmod +x $home_bin/git-val
