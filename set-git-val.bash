#!/bin/bash
#http://stackoverflow.com/questions/9660608/how-can-i-check-if-a-directory-is-on-the-path-in-bash

#wget -q -O - "https://raw.github.com/rofrol/git-helpers/master/set-get-val.bash" | bash
#or
#curl "https://raw.github.com/rofrol/git-helpers/master/set-get-val.bash" | bash

#testing:
#PATH="/bin:/usr/bin" HOME=~/tmphome /bin/bash set-git-val.bash
home_bin=$HOME/bin2

if [ ! -d "$home_bin" ]; then
    echo "creating dir $home_bin"
    mkdir $home_bin
fi

if [[ :$PATH: != *:"$home_bin":* ]] ; then
    echo "adding \$HOME/bin to \$PATH"
    echo "PATH=\$PATH:\$HOME/bin" >> ~/.bashrc
fi

cd $home_bin && wget https://raw.github.com/rofrol/git-helpers/master/git-val && chmod +x $home_bin/git-val
