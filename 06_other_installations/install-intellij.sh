#!/bin/zsh

sudo apt update

sudo apt install -y \
    fontconfig \
    libatk-bridge2.0-0 \
    libatk1.0-0 \
    libcups2 \
    libgbm1 \
    libnss3 \
    libpangocairo-1.0-0 \
    libxkbcommon0 \
    libxss1

IDEA_PATH=/opt/idea

sudo mkdir -p $IDEA_PATH/log
sudo chown $UID:$UID $IDEA_PATH
cd $IDEA_PATH || exit

ideaVersion="${1:-ideaIC-2023.1}"
wget "https://download.jetbrains.com/idea/$ideaVersion.tar.gz"
tar -zxf "$ideaVersion.tar.gz" --strip-components=1
rm "$ideaVersion.tar.gz"
