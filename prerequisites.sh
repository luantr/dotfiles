#!/bin/bash

install_brew() {
  if test ! $(which brew)
  then
    echo "Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   
    echo  "Setting up brew cask"
    brew tap phinze/cask
  fi
}
install_brew
