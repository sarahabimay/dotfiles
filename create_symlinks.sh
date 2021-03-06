#!/usr/bin/env sh

base_dir=$(dirname "$PWD/$0")

if [ ! -f $HOME/.vimrc ]; then
  echo "Linking .vimrc"
  ln -s $base_dir/vim/vimrc $HOME/.vimrc
else
  echo "Skipping .vimrc"
fi

if [ ! -f $HOME/.bashrc ]; then
  echo "Linking .bashrc"
  ln -s $base_dir/bash/bashrc $HOME/.bashrc
else
  echo "Skipping .bashrc"
fi

if [ ! -f $HOME/.tmux.conf ]; then
  echo "Linking .tmux.conf"
  ln -s $base_dir/tmux/tmux.conf $HOME/.tmux.conf
else
  echo "Skipping .tmux.conf"
fi

if [ ! -f $HOME/.gitconfig ]; then
  echo "Linking .gitconfig"
  ln -s $base_dir/git/gitconfig $HOME/.gitconfig
else
  echo "Skipping .gitconfig"
fi
