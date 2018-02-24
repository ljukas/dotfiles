#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Python virtualenv
source /usr/bin/virtualenvwrapper.sh

# Aliases
alias update="sudo pacman -Syu"
alias ya="yaourt"
alias vim="nvim"
alias vi="nvim"
alias workoff="deactivate; cd"

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Add electron to path, for linter in atom
export PATH="$PATH:/usr/lib/electron/electron"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
