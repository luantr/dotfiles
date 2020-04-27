#!/bin/bash

ask_for_sudo() {
    echo "Input your sudo password"
    sudo -v
    while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
}

ask_for_sudo

sh ./prerequisites.sh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


