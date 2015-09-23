#!/usr/bin/env bash

# From https://github.com/mathiasbynens/dotfiles/blob/master/bootstrap.sh

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
  --exclude "README.md" --exclude "LICENSE" -avh --no-perms . ~;

fpath=( "$HOME/.zfunctions" $fpath )
ln -sf ~/.pure.zsh ~/.zfunctions/prompt_pure_setup
ln -sf ~/.async.zsh ~/.zfunctions/async

source ~/.bash_profile;
