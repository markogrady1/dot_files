#!/bin/bash

if [[ $OSTYPE == *linux* ]]
then
    echo "Hello Linux!"

elif [[ $OSTYPE == *darwin* ]]
then
    echo "Hello MacOS!"
    xcode-select --install
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew install zsh
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

    # oh-my-zsh theme
    cp zsh/themes/mark-amuse.zsh-theme ~/.oh-my-zsh/themes/
    sed -i "s+robbyrussell+mark-amuse+" ~/.zshrc

fi

cat vim/vimrc.symlink >> ~/.vimrc
mkdir -p ~/.vim/colors
cp vim/colors/dracula.vim ~/.vim/colors/
cp vim/templates/pm_header.temp ~/.vim/pm_header.temp
cp vim/templates/pl_header.temp ~/.vim/pl_header.temp

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

if [ ! -f "~/.bashrc" ]; then
    touch ~/.bashrc
fi

cat bash/PS1.snippet >> ~/.bashrc
cp bash/aliases.symlink ~/.bash_aliases

echo 'source ~/.bash_aliases' >> ~/.bashrc

# Git configuration
cp git/gitconfig.symlink ~/.gitconfig
cp git/githelpers.symlink ~/.githelpers
cp perltidy/perltidyrc.symlink ~/.perltidyrc


# open vimrc and run :PluginInstall
