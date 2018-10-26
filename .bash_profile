if [ -x /usr/libexec/path_helper ]; then
	eval `/usr/libexec/path_helper -s`
fi

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# include .bash_aliases if it exists
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# include .bash_secrets if it exists
if [ -f ~/.bash_secrets ]; then
    source ~/.bash_secrets
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

if [ -f "$(brew --refix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin:/usr/local/bin
export EDITOR='vim'

export NODE_PATH=/usr/local/lib/node_modules
export PATH="/usr/local/share/npm/bin:$PATH"

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

# rbenv
export RBENV_ROOT="$HOME/.rbenv"

export EC2_USERNAME=alex

if [ -d $RBENV_ROOT ]; then
  export PATH="$RBENV_ROOT/bin:$PATH"
  eval "$(rbenv init -)"
fi

if [ -d $PYENV_ROOT ]; then
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
fi

export PATH=/usr/local/sbin:$PATH
