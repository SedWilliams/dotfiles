
#!/bin/bash

# Install Bob

# Check if Bob is already installed
BOB=$(command -v bob)

if [ -n $BOB ]; then
    echo "Bob is already installed at $BOB"
else
    echo "Installing Bob..."
    cargo install bob
    echo "Bob installation complete."
fi

