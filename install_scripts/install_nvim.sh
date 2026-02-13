
#!/bin/bash

# Check if Neovim is already installed
if [ command -v nvim &> /dev/null ]; then
    echo "Neovim is already installed."
else
    echo "Installing Neovim..."
    bob install latest
    echo "Neovim installation complete."
echo "alias nvim='/home/tre3iii/.local/share/bob/v0.11.6/bin/nvim'" >> $HOME/.bashrc
fi

