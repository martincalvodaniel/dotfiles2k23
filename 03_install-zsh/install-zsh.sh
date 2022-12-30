#!/bin/bash
echo "[ZSH] Installing antibody..."
curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin

# Install Antibody and generate .zsh_plugins.zsh
echo "[ZSH] Antibody installing plugins ..."
antibody bundle < "$DOTS_HOME"/homeFiles/zsh_plugins > ~/.zsh_plugins.zsh

# Link custom dotfiles
./update-zsh.sh

# Create .screen folder used by .zshrc
mkdir ~/.screen && chmod 700 ~/.screen

# Change default shell to zsh
chsh -s $(which zsh)
