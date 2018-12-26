#!/usr/bin/env bash

(command -v curl >/dev/null 2>&1) || {
  echo >&2 "You first need to have curl installed. Aborting.";
  exit 1;
}

repo=https://github.com/modood/i3wmconfig/raw/master

dotfiles=(
  .config/i3/config
  .config/i3status/config
)

for i in ${dotfiles[@]}; do curl -L $repo/$i > $HOME/$i; done
