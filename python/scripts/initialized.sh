#!/bin/bash

# set up conf for vim
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# set up conf for zsh and replace bash with zsh as default
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# pull the configs
git clone https://gist.github.com/89b072c8d6c34d91047be1421b23d8bc.git /tmp/a
mv /tmp/a/my_configs.vim ~/.vim_runtime/

# clean the temp files
rm -rf /tmp/*
