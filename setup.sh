# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Make sure it is up to date
brew update

# Install autocomplete
brew install bash-completion

# Install tree
brew install tree

# Install python
brew install python

# Install vim
brew install vim
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone git@github.com:Lokaltog/powerline-fonts.git
vim +PluginInstall +qall

# Install rbenv
brew install rbenv
brew install ruby-build

# Install Ruby
rbenv install 2.5.3
rbenv global 2.5.3

# Install some gems
rbenv rehash
gem install rails
rbenv rehash

gem install hookup
rbenv rehash

# Unpack Dotfiles
./unpack.sh
