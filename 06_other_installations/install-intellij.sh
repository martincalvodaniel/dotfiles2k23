#!/bin/zsh
sudo apt update && sudo apt install -y \
    fontconfig \
    libxss1 \
    libnss3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libgbm1 \
    libpangocairo-1.0-0 \
    libcups2 \
    libxkbcommon0

IDEA_PATH=/opt/idea

sudo mkdir -p $IDEA_PATH
sudo chown $UID:$UID $IDEA_PATH
cd $IDEA_PATH || exit

ideaIUVersion="${1:-2022.1}"
wget "https://download.jetbrains.com/idea/ideaIU-$ideaIUVersion.tar.gz"
tar -zxf "ideaIU-$ideaIUVersion.tar.gz"
rm "ideaIC-$ideaIUVersion.tar.gz"


