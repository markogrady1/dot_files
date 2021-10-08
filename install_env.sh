#!/bin/bash

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp dot_files/perltidy/perltidyrc.symlink ~/.perltidyrc

cat dot_files/vim/vimrc.symlink >> ~/.vimrc
mkdir -p ~/.vim/colors
cp dot_files/vim/colors/dracula.vim ~/.vim/colors/
cp dot_files/vim/templates/pm_header.temp ~/.vim/pm_header.temp
cp dot_files/vim/templates/pl_header.temp ~/.vim/pl_header.temp

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
