#!/bin/bash
# This script is the master install script which installs all of the dotfiles from the repo.

chmod a+x ./install_gemini_cli.sh
source ./install_gemini_cli.sh

chmod a+x ./install_node.sh
source ./install_node.sh

echo "Please close and reopen your terminal or run 'source ~/.bashrc' (or ~/.zshrc) to start using Node.js."
