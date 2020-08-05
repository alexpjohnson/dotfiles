#!/bin/sh

if ! [ command -v zsh >/dev/null &2>1 ]; then
  apt install zsh -y
fi

chsh -s $(which zsh)
