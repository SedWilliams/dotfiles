#!/bin/bash

# Install Bob

# Check if Bob is already installed
BOB=$(command -v bob)

if [ -z $BOB ]; then
    echo "Bob is already installed..."
    echo $BOB
else
    echo "Install dep 'unzip' first..."
    sudo apt-get install unzip
    curl -fsSL https://raw.githubusercontent.com/MordechaiHadad/bob/master/scripts/install.sh | bash
    echo "Bob installation complete."
fi

echo "export PATH=$PATH:/home/tre3iii/.local/" >> $HOME/.bashrc


source $HOME/.bashrc
