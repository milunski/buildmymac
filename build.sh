#!/bin/bash

# setup my mac with all my software

# install homebrew
echo "installing homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo -ne '\n'

# install the important packages
declare -a arr=(python3 julia visual-studio-code)
for program in "${arr[@]}"
    do
        {
            echo installing $program
            brew install $program
        } || {
            echo installing $program
            brew cask install $program
        }
    done
