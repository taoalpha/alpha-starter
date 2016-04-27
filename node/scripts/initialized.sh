#!/bin/bash

# set up conf for vim
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# set up conf for zsh and replace bash with zsh as default
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# set up nvm for node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash

# set up the vim with customized plugins and configs
git clone https://github.com/mxw/vim-jsx ~/.vim_runtime/sources_non_forked/vim-jsx
git clone git://github.com/tpope/vim-unimpaired.git ~/.vim_runtime/sources_non_forked/vim-unimpaired
git clone https://github.com/mattn/emmet-vim ~/.vim_runtime/sources_non_forked/emmet-vim

# pull the configs
git clone https://gist.github.com/89b072c8d6c34d91047be1421b23d8bc.git /tmp/a
mv /tmp/a/my_configs.vim ~/.vim_runtime/

# clean the temp files
rm -rf /tmp/*
