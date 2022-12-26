#!/bin/bash

# Set username and email for next commands
email="martincalvodaniel@gmail.com"
username="dmartinc"

# Configure Git
echo "[GIT] Setting git config paramaters"
git config --global user.email "${email}"
git config --global user.name "${username}"
git config --global core.excludesfile ~/.gitignore

# Configure git alias
echo "[GIT] Alias setup"
git config --global alias.s "status -s"
git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.mergec "merge --no-ff --no-commit"
git config --global alias.gclean "clean -d -f -f"

# Generate a new SSH key
#ssh-keygen -t rsa -b 4096 -C "${email}"

# Start ssh-agent and add the key to it
#eval $(ssh-agent -s)
#ssh-add ~/.ssh/id_rsa

# Display the public key ready to be copy pasted to GitHub
#cat ~/.ssh/id_rsa.pub
