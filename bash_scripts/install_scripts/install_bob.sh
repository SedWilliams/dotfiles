#!/bin/bash

# Install Bob (Neovim version manager)

BOB=$(command -v bob)

if [ -n "$BOB" ]; then
    echo "Bob is already installed..."
    echo "$BOB"
else
    echo "Install dep 'unzip' first..."
    sudo apt-get install -y unzip
    echo "Installing Bob..."
    curl -fsSL https://raw.githubusercontent.com/MordechaiHadad/bob/master/scripts/install.sh | bash
    echo "Bob installation complete."
fi

# Add Bob's local bin to PATH (idempotent)
if ! grep -q '$HOME/.local/bin' "$HOME/.bashrc"; then
    echo 'export PATH="$PATH:$HOME/.local/bin"' >> "$HOME/.bashrc"
fi
