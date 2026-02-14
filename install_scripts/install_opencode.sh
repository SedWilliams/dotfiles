#!/bin/bash

echo "Checking to see if opencode is installed..."
OPENCODE=$(command -v opencode)

if [ -z $OPENCODE ]; then
    echo "Installing opencode"
    curl -fsSL https://opencode.ai/install | bash
    echo "Opencode installed"
else
    echo "Opencode is already installed..."
    echo $OPENCODE
fi



