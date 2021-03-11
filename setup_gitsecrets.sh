#!/usr/bin/env sh

# install_brews.sh should be run first
# Adds common AWS patterns to the git config:
git secrets --register-aws --global
# Installs git hooks to the given directory
git secrets --install ~/.git-templates/git-secrets
# Tells git where to find git secret hooks
git config --global init.templateDir ~/.git-templates/git-secrets
