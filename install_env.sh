#!/bin/bash

cp dot_files/perltidy/perltidyrc.symlink ~/.perltidyrc

cat dot_files/vim/vimrc.symlink >> ~/.vimrc
mkdir -p ~/.vim/colors
cp dot_files/vim/colors/dracula.vim ~/.vim/colors/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

if [ ! -f "~/.bashrc" ]; then
    touch ~/.bashrc
fi

cat dot_files/bash/PS1.snippet >> ~/.bashrc
cp dot_files/bash/aliases.symlink ~/.bash_aliases

echo 'source ~/.bash_aliases' >> ~/.bashrc

# Git configuration
cp dot_files/git/gitconfig.symlink ~/.gitconfig
cp dot_files/git/githelpers.symlink ~/.githelpers
