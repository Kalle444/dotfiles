#!/bin/zsh

echo "symlinking .files"

working_dir=$PWD

echo "Working directory" $working_dir

# echo "Installing bash_profile"
# ln -sv $working_dir/.bash_profile ~/.bash_profile
echo "Installing zshrc"
ln -sv $working_dir/.zshrc ~/.zshrc
echo "Installing gitconfig"
ln -sv $working_dir/.gitconfig ~/.gitconfig
echo "Installing irbrc"
! [ -f ~/.irb-history ] && touch ~/.irb-history
ln -sv $working_dir/.irbrc ~/.irbrc
