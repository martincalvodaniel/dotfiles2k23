#!/bin/zsh

cd /tmp/aws-cli || exit
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
cd - || exit
rm -rf /tmp/aws-cli