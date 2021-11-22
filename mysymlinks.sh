#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Function to create symlink
create_link_if_missing() {
  local source=$1
  local target=$2
  local target_file=$(basename $target)

  if [ ! -f $target ]; then
    echo "Linking $target_file"
    ln -s $source $target
  else
    echo "Skipping $target_file"
  fi
}
########## Variables

dir=~/dotfiles                        # dotfiles directory
olddir=~/dotfiles_old                 # old dotfiles backup directory
files="gitconfig gitignore_global bash_aliases vimrc vim tmux.conf"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
  echo "Moving any existing dotfiles from ~ to $olddir"
  mv ~/.$file ~/dotfiles_old/
  # echo "Creating symlink to $file in home directory."
  # ln -s $dir/$file ~/.$file
done

echo "Creating symlink to $file in home directory."
create_link_if_missing $dir/zsh/zshrc ~/.zshrc
create_link_if_missing $dir/bash/bashrc ~/.bashrc
create_link_if_missing $dir/bash/bash_profile ~/.bash_profile
create_link_if_missing $dir/bash/bash_aliases ~/.bash_aliases
create_link_if_missing $dir/git/gitconfig ~/.gitconfig
create_link_if_missing $dir/git/gitignore_global ~/.gitignore_global
create_link_if_missing $dir/git/gitconfig ~/.gitconfig
create_link_if_missing $dir/vim/vimrc ~/.vimrc
create_link_if_missing $dir/vim/ ~/.vim
create_link_if_missing $dir/tmux/tmux.conf ~/.tmux.conf
