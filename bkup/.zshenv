#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ ( "$SHLVL" -eq 1 && ! -o LOGIN ) && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

# Python virtualenvwrapper   
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/dev/python
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python2
export VIRTUALENVWRAPPER_VIRTUALENV=/usr/bin/virtualenv

# Icons for polybar
export ICON_KEYBOARD="$(echo -e "\uE26F ")"
