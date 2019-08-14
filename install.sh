#! /bin/bash

# Install dependencies.
sudo apt install cowsay toilet

# Make 'tuxcount.sh' executable.
sudo chmod 755 tuxcount.sh

# Copy 'tuxcount.sh' to /usr/bin/ directory.
sudo cp tuxcount.sh /usr/bin/

# Make soft link for /usr/bin/tuxcount.sh to /bin/tuxcount
sudo ln -s /usr/bin/tuxcount.sh /bin/tuxcount
