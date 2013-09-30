# Install brew
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

# Make sure it is up to date
brew update

# Install GIT
brew install git

# Install tree
brew install tree

# Install vim
brew install vim

# Install rbenv
brew install rbenv
brew install ruby-build

# Install Ruby
rbenv install 2.0.0-p247

# Install some gems
gem install rails
gem install awesome_print
gem install interactive_editor
rbenv rehash

# Unpack Dotfiles
./unpack.sh
