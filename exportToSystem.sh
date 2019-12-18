#!/bin/bash
#Copies all dotfiles to system

cp _gitconfig ~/.gitconfig
cp _bash_profile ~/.bash_profile
cp _vimrc ~/.vimrc
cp _gitmessage ~/.gitmessage

mkdir ~/.vim
cp vim/* ~/.vim/
