#!/bin/bash

# setup my mac with all my software

# install homebrew
echo "installing homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo -ne '\n'

# install the important packages
declare -a arr=(git python3 julia r visual-studio-code virtualbox)
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

# install some python necessities that aren't part of standard library
declare -a arr=(virtualenv pytest)
for package in "${arr[@]}"
    do
        echo pip installing $package...
        pip install $package
done