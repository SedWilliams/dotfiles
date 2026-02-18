#!/bin/bash

# This script is the master install script which installs all of the dotfiles from the repo.

chmod a+x ./bash_scripts/install_scripts/install_gemini_cli.sh
source ./bash_scripts/install_scripts/install_gemini_cli.sh

chmod a+x ./bash_scripts/install_scripts/install_opencode.sh
source ./bash_scripts/install_scripts/install_opencode.sh

chmod a+x ./bash_scripts/install_scripts/install_node.sh
source ./bash_scripts/install_scripts/install_node.sh

chmod a+x ./bash_scripts/install_scripts/install_rust.sh
source ./bash_scripts/install_scripts/install_rust.sh

chmod a+x ./bash_scripts/install_scripts/install_bob.sh
source ./bash_scripts/install_scripts/install_bob.sh

chmod a+x ./bash_scripts/install_scripts/install_nvim.sh
source ./bash_scripts/install_scripts/install_nvim.sh

echo "Installation complete. Please close and reopen your terminal or run 'source ~/.bashrc' to apply changes."
