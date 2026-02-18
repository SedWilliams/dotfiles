#!/bin/bash

# Install Neovim via Bob

if command -v nvim &> /dev/null; then
    echo "Neovim is already installed."
else
    echo "Installing Neovim via Bob..."
    bob install latest
    bob use latest
    echo "Neovim installation complete."
fi

# Add Bob's nvim-bin to PATH (idempotent)
if [ -f "$HOME/.bashrc" ]; then
    if ! grep -q '$HOME/.local/share/bob/nvim-bin' "$HOME/.bashrc"; then
        echo 'export PATH="$PATH:$HOME/.local/share/bob/nvim-bin"' >> "$HOME/.bashrc"
        echo "Added Bob's nvim-bin to PATH in ~/.bashrc"
    fi
fi

if [ -f "$HOME/.zshrc" ]; then
    if ! grep -q '$HOME/.local/share/bob/nvim-bin' "$HOME/.zshrc"; then
        echo 'export PATH="$PATH:$HOME/.local/share/bob/nvim-bin"' >> "$HOME/.zshrc"
        echo "Added Bob's nvim-bin to PATH in ~/.zshrc"
    fi
fi
