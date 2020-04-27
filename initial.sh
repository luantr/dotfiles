#/bin/bash

set -x

if [ ! -f ~/.ssh/id_rsa.pub ]; then
  ssh-keygen -t rsa -b 4096
  cat ~/.ssh/id_rsa.pub | pbcopy
  
  open https://github.com/settings/ssh/new
  
  read -n1 -r -p "Press any key to continue..." key
fi

ssh-add

until git --version; do
  sleep 1
done

cd ~
git clone git@github.com:luantr/dotfiles.git .dotfiles
