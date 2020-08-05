#!/bin/sh

if ! [ -x "$(command -v nvim)" >/dev/null 2>&1 ]; then
  sudo apt install neovim -y
fi
