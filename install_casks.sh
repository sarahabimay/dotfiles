#!/usr/bin/env sh

casks=(
"dropbox"
"1password"

"google-chrome"

"iterm2"
"alfred"
"slack"
"virtualbox"
"vagrant"
"vagrant-manager"
)

for cask in ${casks[@]}
do
  echo "Installing: ${cask}"
  brew cask install $cask
done
