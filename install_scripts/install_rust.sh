
#!/bin/bash

if [ -x "$(command -v rustup)" ]; then
    echo "Rust is already installed."
    echo $(command -v rustup)
else
    echo "Installing Rust..."
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
    source $HOME/.cargo/env
fi

