#!/bin/bash
cd bundle
./init.sh
cd ..
ln -s `pwd`/linux.tmux.conf ../.tmux.conf
ln -s `pwd`/vimrc ../.vimrc
cd ~
ls -alF
