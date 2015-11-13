#!/bin/bash
cd bundle
./init.sh
cd ..
ln -s `pwd`/linux.tmux.conf ../.tmux.conf
ln -s `pwd`/vimrc ../.vimrc
cat add_to_profile.txt >> ../.vimrc
cd ~
ls -alF
