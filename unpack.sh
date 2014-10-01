#!/bin/sh
link() {
	file=$1
  current=`pwd`
  echo "Linking file($file) from $current to $HOME"
	ln -s $current/$file $HOME/$file
}

files=(.bash_profile .bashrc .bash_aliases .bash_secrets .gemrc .gitconfig .irbrc .irbrc_rails .vimrc git-completion.bash)

for file in ${files[@]}
do
	link $file
done

echo "Creating git template folder"
mkdir -p $HOME/.git_templates/hooks

echo "Linking git hooks to $HOME"
ln -s $current/.git_templates/hooks/* $HOME/.git_templates/hooks

echo "Sourcing the bash_profile"
source $HOME/.bash_profile
