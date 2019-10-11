#!/bin/bash

# Install dependencies.
sudo apt install cowsay toilet

# Make source directory for tuxcount
sudo mkdir -v /opt/tuxcount

# Copy source file of tuxcount to it's source directory
sudo cp -vr ./* /opt/tuxcount/.

# Give ownership to local user for source directory and it's content
sudo chown -vR $USER:$USER /opt/tuxcount/

# Make command for tuxcount
sudo ln -vs /opt/tuxcount/tuxcount.sh /usr/local/bin/tuxcount

# Done
echo "Make done"
