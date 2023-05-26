#!/bin/bash

set -e

# finish configuring the repo
cd "$HOME"/src/dotfiles
git submodule init
git submodule update

# move to home so we can configure dotfiles
cd "$HOME"

# configure vim
ln -s "$HOME"/src/dotfiles/vim .vim
ln -s "$HOME"/src/dotfiles/vim/vimrc .vimrc

# configure git
cat "$HOME"/src/dotfiles/git/gitconfig .gitconfig

