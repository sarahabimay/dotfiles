#!/usr/bin/env sh

casks=(
"dropbox"
"1password"

"google-chrome"
"firefox"

"iterm2"
"alfred"
"slack"

"intellij-idea-ce"
"sublime-text"
)

for cask in ${casks[@]}
do
  echo "Installing: ${cask}"
  brew cask install $cask
done
