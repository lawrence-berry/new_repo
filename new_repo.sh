#!/bin/bash

if [[ ! $1 =~ / ]]; then
  echo "Please include containing folder, e.g.:"
  echo "  new_repo util/app"
  exit 1
fi

mkdir -p ~/Projects/$1
cd ~/Projects/$1
git init .
touch README.md

# To preserve the change of directory
exec $SHELL
