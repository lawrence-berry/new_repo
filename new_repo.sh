#!/bin/bash

if [[ ! $1 =~ / ]]; then
  echo "Please include containing folder, e.g.:"
  echo "  new_repo util/app"
  exit 1
fi

PROJECT_FOLDERS_LOCATION="/Users/$USER/Projects/"
FOLDER_NAME=`echo $1 | cut -d "/" -f 1`
PROJECT_NAME=`echo $1 | cut -d "/" -f 2`
PROJECT_PATH=$PROJECT_FOLDERS_LOCATION$1

if [[ $FOLDER_NAME =~ ^geome$ && $PROJECT_NAME =~ api$ || $2 =~ api ]]; then
  echo "yes"
  cd /Users/$USER/Projects/geome/template
  /Users/$USER/Projects/geome/template/bin/setup
  cd $PROJECT_PATH
else
  mkdir -p ~/Projects/$1
  cd ~/Projects/$1
  git init .
  touch README.md
fi

# To preserve the change of directory
exec $SHELL

