#!/bin/sh
set -e

# Adds script to bin folder
cp update-glab-credentials /usr/local/bin

# Adds necessary call for interactive scripts
cat rc-ext.sh >> $HOME/.bashrc
cat rc-ext.sh >> $HOME/.zshrc