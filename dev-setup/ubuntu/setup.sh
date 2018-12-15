#!/bin/bash

# Step 1: Install GIT


if ! [ -x "$(command -v git)" ]; then
    echo 'Error: git is not installed. Installing' >&2

    sudo apt-get update

    sudo apt-get install git-core
else
    echo "[CHECK] git installed"
fi

# Step 2: Install emacs

sudo apt-get remove -y  emacs emacs24*
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt-get update
sudo apt-get install -y emacs25


# Step 3: Clone spacemacs config

git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d


# Step 4: Customize spacemacs

wget -O ~/.spacemacs https://raw.githubusercontent.com/jeffffrey/conf/master/dot.spacemacs
