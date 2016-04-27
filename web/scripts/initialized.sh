#!/bin/bash

# set up conf for vim
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# set up conf for zsh and replace bash with zsh as default
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# set up the vim with customized plugins and configs
git clone https://github.com/mxw/vim-jsx ~/.vim_runtime/sources_non_forked/vim-jsx
git clone git://github.com/tpope/vim-unimpaired.git ~/.vim_runtime/sources_non_forked/vim-unimpaired
git clone https://github.com/mattn/emmet-vim ~/.vim_runtime/sources_non_forked/emmet-vim

# pull the configs
git clone https://gist.github.com/89b072c8d6c34d91047be1421b23d8bc.git /tmp/a
mv /tmp/a/my_configs.vim ~/.vim_runtime/

# set up react starter
git clone https://github.com/taoalpha/web-starter ~/web
cd ~/web

# install required compiling tools for node-sass
apk add python make g++

# install all basic packages
npm install

# clean the compiling tools
apk del python make g++

# clean the npm cache
npm cache clean

# clean the temp files
rm -rf /tmp/*
