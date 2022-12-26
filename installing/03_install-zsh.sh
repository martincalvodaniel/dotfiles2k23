#!/bin/bash
echo "[ZSH] Installing antibody..."
curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin

# Install Antibody and generate .zsh_plugins.zsh
echo "[ZSH] Antibody installing plugins ..."
antibody bundle < files/zsh/zsh_plugins > ~/.zsh_plugins.zsh

export DOTS_HOME=~/workspace/martincalvodaniel/dotfiles2k23

# Link custom dotfiles
cp files/zsh/.aliases.zsh ~/.aliases.zsh
cp files/zsh/.p10k.zsh ~/.p10k.zsh
cp files/zsh/.zshrc ~/.zshrc
cp files/zsh/.zshenv ~/.zshenv

# Create .screen folder used by .zshrc
mkdir ~/.screen && chmod 700 ~/.screen

# Change default shell to zsh
chsh -s $(which zsh)
