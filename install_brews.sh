#!/usr/bin/env sh

formulae=(
  "homebrew/cask"
  "tmux"
  "reattach-to-user-namespace"
  "chruby"
  "git"
  "maven"
  "ruby-build"
  "the_silver_searcher"
  "packer"
  "git-secrets"
  "httpie"
  "flyway"
  "terraform"
  "groovy"
  "pip3"
  "python3"
  "sqlite3"
  "tree"
  "rbenv ruby-build"
  "postgres"
  "kafka"
  "go"
  "clojure/tools/clojure"
)

for formula in ${formulae[@]}
do
  echo "Installing: ${formula}"
  brew install $formula
done
