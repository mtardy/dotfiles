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

# clone powerlevel10k
POWERLEVEL10K_PATH=$ZSH_PACKAGE_PATH/powerlevel10k
if [ -d $POWERLEVEL10K_PATH ]
then
    echo "[WARNING] powerlevel10k is already installed, removing $POWERLEVEL10K_PATH and all its content..."
    rm -rf $POWERLEVEL10K_PATH
fi
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $POWERLEVEL10K_PATH 
