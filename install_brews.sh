#!/usr/bin/env sh

formulae=(
  "caskroom/cask/brew-cask"
  "tmux"
  "reattach-to-user-namespace"
  "chruby"
  "git"
  "maven"
  "ruby-build"
)

for formula in ${formulae[@]}
do
  echo "Installing: ${formula}"
  brew install $formula
done
