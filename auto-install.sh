#!/bin/sh
DOTPATH=~/.dotfiles

warn() {
   echo "$1" >&2
}

die() {
   warn "$1"
   exit 1
}

git clone git://github.com/seankwei/dotfiles.git "$DOTPATH"
cd "$DOTPATH"
git submodule update --init

./install.sh
