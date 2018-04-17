#!/bin/bash
#Install everything needed for this .bash_profile

curl -L https://iterm2.com/misc/install_shell_integration.sh | bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update && brew upgrade
#Initialized in .bash_profile
brew install bash-completion bash-git-prompt
#Funnier .bash_profile ;)
brew install fortune cowsay

#Java8
brew tap caskroom/versions
brew cask install java8
brew install brew-cask-completion

#Others
brew cask install macdown texmaker quicklookapk
brew install git-extras git-lfs git-flow imagemagik wget python3 tldr brew-cask-completion lua gngpg
