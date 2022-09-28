#!/bin/bash

echo $(ssh-agent)
ssh-add $HOME/.ssh/id_ed25519
git clone --recurse-submodules --branch main git@github.com:juanjozg/.dotfiles.git $HOME/.dotfiles
