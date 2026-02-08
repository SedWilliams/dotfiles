#!/bin/bash

# This script is the master install script which installs all of the dotfiles from the repo.

chmod a+x ./install_scripts/install_gemini_cli.sh
source ./install_scripts/install_gemini_cli.sh

chmod a+x ./install_scripts/install_node.sh
source ./install_scripts/install_node.sh

chmod a+x ./install_scripts/install_rust.sh
source ./install_scripts/install_rust.sh

chmod a+x ./install_scripts/install_bob.sh
source ./install_scripts/install_bob.sh

chmod a+x ./install_scripts/install_nvim.sh
source ./install_scripts/install_nvim.sh

echo "Please close and reopen your terminal or run 'source ~/.bashrc' (or ~/.zshrc) to start using Node.js."
echo 'export PATH=$PATH:/workspaces/your-repo/bin' >> ~/.bashrc
