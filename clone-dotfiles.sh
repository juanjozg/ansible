#!/bin/bash

eval `ssh-agent -s`
ssh-add
git clone --recurse-submodules --branch main git@github.com:juanjozg/.dotfiles.git $HOME/.dotfiles
