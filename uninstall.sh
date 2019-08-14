#! /bin/bash

# Remove soft link 'tuxcount' from /bin/ directory.
sudo rm /bin/tuxcount

# Remove 'tuxcount.sh' script from /usr/bin/ directory.
sudo rm /usr/bin/tuxcount.sh

# purge dependencies.
sudo apt purge cowsay toilet

# autoremove remaining files of dependencies.
sudo apt autoremove
