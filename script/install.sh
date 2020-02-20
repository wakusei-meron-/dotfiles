#!/bin/bash
#
# Install My Dotfiles

DOTFILES_DIRNAME="dotfiles"

if [ ! -d $HOME$DOTFILES_DIRNAME ]; then
  echo "Instaling dotfiles..."
  git clone https://github.com/wakusei-meron-/dotfiles.git
  cd $DOTFILES_DIRNAME

  # create symboric link
  for f in .??*; do # . と ..を除外
    ln -siv $HOME/${DOTFILES_DIRNAME}/${f} $HOME/${f}
  done
else
  echo "Dotfiles is already installed"
fi

