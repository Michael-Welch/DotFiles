#! /usr/bin/env bash

# Set up the basics (bash, tmux, vim)
rm ~/.bashrc
ln -s $PWD/.bashrc ~/.bashrc
rm ~/.vimrc
# Get vim all set up
ln -s $PWD/.vimrc ~/.vimrc
# Install vundle
mkdir -p ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
