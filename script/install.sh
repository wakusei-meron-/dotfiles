#!/bin/bash
#
# Install My Dotfiles

DOTFILES_DIRNAME="dotfiles"

if [ ! -d $HOME$DOTFILES_DIRNAME ]; then
  echo "Instaling dotfiles..."
  git clone https://github.com/wakusei-meron-/dotfiles.git
  cd $DOTFILES_DIRNAME

  # install brew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  
  # install brew package
  brew bundle

  # rust
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

else
  echo "Dotfiles is already installed"
fi

