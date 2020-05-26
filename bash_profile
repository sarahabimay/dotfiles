export BASH_CONF="bash_profile"
echo $BASH_CONF
# remove duplicate commands from bash history
export HISTCONTROL=ignoreboth:erasedups

if [ -f ~/dotfiles/git/git-prompt.sh ]; then
. ~/dotfiles/git/git-prompt.sh
fi

export GIT_PS1_SHOWCOLORHINTS=1
export PROMPT_COMMAND='__git_ps1 "\[\e[32;1m\]\w\[\e[0m\]" "\[\e[37;1m\] $ " '

# Alias definitions.
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

if [ -f ~/.git-completion.bash ]; then
. ~/.git-completion.bash
fi

# recursively create directories then cd into it
function mcd () {
  mkdir -p $1
    cd $1
}
# search for processes running on a port
function find_port () {
 lsof -i:$1
}
export PATH="/usr/local/sbin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
