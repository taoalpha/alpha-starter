#!/bin/bash

# set up conf for vim
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# set up conf for zsh and replace bash with zsh as default
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# set up nvm for node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
