#!/bin/bash

# Install Bob

# Check if Bob is already installed
BOB=$(command -v bob)

if [ -z $BOB ]; then
    echo "Bob is already installed..."
    echo $BOB
else
    echo "Installing Bob..."
    cargo install --git https://github.com/MordechaiHadad/bob.git
    echo "Bob installation complete."
fi

