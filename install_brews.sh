#!/usr/bin/env sh

formulae=(
  "caskroom/cask/brew-cask"
  "tmux"
  "reattach-to-user-namespace"
  "chruby"
  "git"
  "maven"
  "ruby-build"
  "the_silver_searcher"
  "packer"
)

for formula in ${formulae[@]}
do
  echo "Installing: ${formula}"
  brew install $formula
done
