#!/bin/bash
#Copies all dotfiles from system to this folder

cp ~/.gitconfig _gitconfig
cp ~/.bash_profile _bash_profile
cp ~/.vimrc _vimrc
cp ~/.gitmessage _gitmessage


mkdir vim
cp ~/.vim/sh_header.temp vim
cp ~/.vim/java_header.temp vim

