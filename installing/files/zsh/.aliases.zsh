#!/bin/zsh

#UBUNTU
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias ls='ls --color=auto'
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -alsh'
alias lll='ls -alsh *'
alias la='ls -lAh'

alias d2u='dos2unix'

# IDEA
alias ij='sh /opt/idea/idea-IC-223.8214.52/bin/idea.sh > /opt/idea/idea-IC-223.8214.52/bin/log/ij.log 2>&1 &'
alias ijp='sh /opt/idea/idea-IC-223.8214.52/bin/idea.sh . > /opt/idea/idea-IC-223.8214.52/bin/log/ijp.log 2>&1 &'

# K8S
alias k="kubectl"
alias kl="k logs"
alias kgp="k get pods"
alias kc='echo $KUBECONFIG'

#AWS
alias k8s-dev="aws eks update-kubeconfig --name dev"
alias k8s-pre="aws eks update-kubeconfig --name pre"
alias k8s-pro="aws eks update-kubeconfig --name pro"

alias grep="grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn}"

#JAVA
alias j8="sdk use java 8.0.352-tem"
alias j11="sdk use java 11.0.17-tem"
alias j17="sdk use java 17.0.5-tem"

#FOLDERS
alias workspace='cd ~/workspace'
alias dots="cd ~/workspace/martincalvodaniel/dotfiles2k22"

alias reload="source ~/.zshrc"
alias mongodbcompass="mongodb-compass --no-sandbox &"

# WSL specific things
if grep --quiet microsoft /proc/version 2>/dev/null; then
  alias idea="(pkill -f 'java.*idea' || true) && screen -d -m /opt/idea/bin/idea.sh"
  alias wslb="PowerShell.exe 'Start-Process PowerShell -Verb RunAs \"PowerShell -File \$env:USERPROFILE\\wsl2-bridge.ps1\"'"
  alias dcs="sudo /etc/init.d/docker start"
fi
