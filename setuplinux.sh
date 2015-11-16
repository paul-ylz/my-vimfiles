#!/bin/bash
cd bundle
./init.sh
cd ..
ln -s `pwd`/linux.tmux.conf ../.tmux.conf
ln -s `pwd`/vimrc ../.vimrc
echo "source add_to_profile.txt" >> ../.bashrc
cd ~
ls -alF
