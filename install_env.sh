#!/bin/bash

# setup git env variables
#if [[ $1 && $2 ]]; then
#    export GIT_USERNAME="$1"
#    export GIT_PASSWORD="$1"
#else
#    echo "USAGE: ./$(basename $0) GIT_USERNAME GIT_PASSWORD"
#    exit
#fi

cp dot_files/perltidy/perltidyrc.symlink ~/.perltidyrc
cat dot_files/vim/vimrc.symlink >> ~/.vimrc
mkdir -p ~/.vim/colors
cp dot_files/vim/colors/dracula.vim ~/.vim/colors/

if [ ! -f "~/.bashrc" ]; then
    touch ~/.bashrc
fi

cat dot_files/bash/PS1.snippet >> ~/.bashrc

cp dot_files/bash/aliases.symlink ~/.bash_aliases

echo 'source ~/.bash_aliases' >> ~/.bashrc

# Git configuration
cp dot_files/git/gitconfig.symlink ~/.gitconfig
cp dot_files/git/githelpers.symlink ~/.githelpers

#git config --global user.name $GIT_USERNAME
#git config --global user.email $GIT_PASSWORD
