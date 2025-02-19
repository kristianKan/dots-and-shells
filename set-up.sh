#!/bin/bash

VIMRC=.vimrc
if test -f "$VIMRC"; then
  cp .vimrc ~/
else
  echo ".vimrc is missing"
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

vim +PlugClean +PlugInstall +qa

TERN=.tern-project
if test -f "$TERN"; then
  cp .tern-project ~/
else
  echo ".tern-project is missing"
fi

BASH_PROFILE=.bash_profile
if test -f "$BASH_PROFILE"; then
  cp .bash_profile ~/
else
  echo ".bash_profile is missing"
fi
