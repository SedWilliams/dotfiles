#!/bin/bash

# install node via nvm

echo "Starting Node.js installation via nvm..."

# Check if nvm is already installed
if [ -d "$HOME/.nvm" ]; then
    echo "nvm is already installed."
else
    # Install nvm
    echo "Installing nvm..."
    # Use the official install script via curl. Check the nvm repo for the latest version.
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

    # Source nvm so it's available in the current session
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
    echo "nvm installed successfully."

    # Define the Node.js version you want to install (e.g., the latest LTS version)
    NODE_VERSION="lts/*"

    # Install the specified Node.js version
    echo "Installing Node.js version $NODE_VERSION..."
    nvm install "$NODE_VERSION"

    # Set the installed version as the default
    nvm alias default "$NODE_VERSION"
    echo "Node.js version $NODE_VERSION installed and set as default."
    echo "Installation complete."
fi



