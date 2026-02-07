
#!/bin/bash

echo "Checking to see if gemini-cli is installed..."
INSTALL_PATH=$(command -v gemini)

if [ -z $INSTALL_PATH ]; then
  npm install -g @google/gemini-cli
  echo "gemini-cli installation complete."
else
  echo "gemini-cli is already installed..."
  echo $INSTALL_PATH
fi
