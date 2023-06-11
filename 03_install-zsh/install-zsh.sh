#!/bin/bash
echo "[ZSH] Installing antibody..."
curl -sfL git.io/antibody | sudo sh -s - -b /usr/local/bin

# Install Antibody and generate .zsh_plugins.zsh
echo "[ZSH] Antibody installing plugins ..."
antibody bundle < ./zsh_plugins > ~/.zsh_plugins.zsh

# Create .screen folder used by .zshrc
mkdir ~/.screen && chmod 700 ~/.screen

# Change default shell to zsh
chsh -s "$(which zsh)"

# Link custom dotfiles
ln -s "$DOTS_HOME"/homeFiles/.aliases.zsh "$HOME"/.aliases.zsh
ln -s "$DOTS_HOME"/homeFiles/.p10k.zsh "$HOME"/.p10k.zsh
ln -s "$DOTS_HOME"/homeFiles/.zshrc "$HOME"/.zshrc
ln -s "$DOTS_HOME"/homeFiles/.zshenv "$HOME"/.zshenv
