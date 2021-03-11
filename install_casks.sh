#!/usr/bin/env sh

casks=(
"dropbox"
"1password"

"google-chrome"

"iterm2"
"alfred"
"slack"
"spectacle"
"virtualbox"
"vagrant"
"vagrant-manager"
"adoptopenjdk"
"AdoptOpenJDK/openjdk/adoptopenjdk8"
)

for cask in ${casks[@]}
do
  echo "Installing: ${cask}"
  brew install --cask $cask
done
