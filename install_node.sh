#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

echo "Starting Node.js installation via nvm..."

# Check if nvm is already installed
if [ -d "$HOME/.nvm" ]; then
    echo "nvm is already installed."
else
    # Install nvm
    echo "Installing nvm..."
    # Use the official install script via curl. Check the nvm repo for the latest version.
    curl -o- https://raw.githubusercontent.com | bash

    # Source nvm so it's available in the current session
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
    echo "nvm installed successfully."
fi

# Define the Node.js version you want to install (e.g., the latest LTS version)
NODE_VERSION="lts/*"

# Install the specified Node.js version
echo "Installing Node.js version $NODE_VERSION..."
nvm install "$NODE_VERSION"

# Set the installed version as the default
nvm alias default "$NODE_VERSION"
echo "Node.js version $NODE_VERSION installed and set as default."
echo "Installation complete."

# Note: nvm requires a new shell session to be fully active.
echo "Please close and reopen your terminal or run 'source ~/.bashrc' (or ~/.zshrc) to start using Node.js."

