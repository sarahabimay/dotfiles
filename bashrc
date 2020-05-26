export BASH_CONF="bashrc"
echo $BASH_CONF
# Remove duplicate commands from bash history
export HISTCONTROL=ignoreboth:erasedups

alias java8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)'
alias java7='export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)'

# unix commands
alias ls="ls -lhFG"

# github commands
alias gst="git st"
alias gbr="git br"
alias gco="git co"
alias gci="git ci"
alias ga="git add"
alias gap="git add -p"
alias gd="git diff"
alias gr="git reset"
alias gpu="git push origin"
alias gpul="git pull origin"
alias gchi="git check-ignore"

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
