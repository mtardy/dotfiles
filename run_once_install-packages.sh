#!/bin/sh
set -e

ZSH_PACKAGE_PATH=~/.local/share/zsh-plugins
# Create destination folder
mkdir -p $ZSH_PACKAGE_PATH

# clone zsh-autosuggestions
ZSH_AUTOSUGGESTIONS_PATH=$ZSH_PACKAGE_PATH/zsh-autosuggestions
if [ -d $ZSH_AUTOSUGGESTIONS_PATH ]
then
    echo "[WARNING] zsh-autosuggestions is already installed, removing $ZSH_AUTOSUGGESTIONS_PATH and all its content..."
    rm -rf $ZSH_AUTOSUGGESTIONS_PATH
fi
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_AUTOSUGGESTIONS_PATH 

# clone zsh-vi-mode
# ZSH_VI_MODE_PATH=$ZSH_PACKAGE_PATH/zsh-vi-mode
# if [ -d $ZSH_VI_MODE_PATH ]
# then
#     echo "[WARNING] zsh-vi-mode is already installed, removing $ZSH_VI_MODE_PATH and all its content..."
#     rm -rf $ZSH_VI_MODE_PATH
# fi
# git clone https://github.com/jeffreytse/zsh-vi-mode.git $ZSH_VI_MODE_PATH

# clone powerlevel10k
POWERLEVEL10K_PATH=$ZSH_PACKAGE_PATH/powerlevel10k
if [ -d $POWERLEVEL10K_PATH ]
then
    echo "[WARNING] powerlevel10k is already installed, removing $POWERLEVEL10K_PATH and all its content..."
    rm -rf $POWERLEVEL10K_PATH
fi
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $POWERLEVEL10K_PATH 

# install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# install vim plugins
echo "installing VIM plugins..."
nvim +'PlugInstall --sync' +qa > /dev/null
