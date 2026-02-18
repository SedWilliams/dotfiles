#!/bin/bash

PLUG_FILE="$HOME/.vim/autoload/plug.vim"

echo "Checking if Vim Plug is installed..."
if [ -f "$PLUG_FILE" ]; then
    echo "Vim Plug is already installed."
    echo "$PLUG_FILE"
else
    echo "Vim Plug not installed... Installing now."
    curl -fLo "$PLUG_FILE" --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    echo "Vim Plug installation complete."
fi
