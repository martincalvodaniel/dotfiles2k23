#!/bin/zsh
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

sdk install java 17.0.5-tem
sdk install java 11.0.17-tem
sdk install java 8.0.352-tem

sdk install visualvm

sdk install groovy
