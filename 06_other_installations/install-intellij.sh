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

sudo mkdir $IDEA_PATH
sudo chown $UID:$UID $IDEA_PATH
cd $IDEA_PATH
echo PWD
pwd

wget https://download.jetbrains.com/idea/ideaIC-2022.3.1.tar.gz
tar -zxf ideaIC-2022.3.1.tar.gz
rm ideaIC-2022.3.1.tar.gz


