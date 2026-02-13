#!/bin/bash

INSTALL_PATH=$(command -v vim)

echo "Checking if vim plug is installed"
if [-z $INSTALL_PATH ]; then
  echo "Vim Plug not installed...Installing Now"
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
  echo "Vim Plug is installed already"
  echo $INSTALL_PATH
fi
  
