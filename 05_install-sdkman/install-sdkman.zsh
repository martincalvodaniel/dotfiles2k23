#!/bin/zsh
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version

sdk install java 8.0.362-tem
sdk install java 11.0.18-tem
sdk install java 17.0.6-tem

sdk install visualvm 2.1.5

sdk install groovy
