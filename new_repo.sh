#!/bin/bash

# $1 is a relative path from $HOME/Projects to install to
# $2 is one of api, fe (both geo.me), bash or ruby
if [[ ! $1 =~ / ]]; then
  echo "Please include containing folder, e.g.:"
  echo "  new_repo util/app"
  exit 1
fi

TEMPLATE_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
PROJECT_FOLDERS_LOCATION="/Users/$USER/Projects/"
FOLDER_NAME=`echo $1 | cut -d "/" -f 1`
PROJECT_NAME=`echo $1 | cut -d "/" -f 2`
PROJECT_PATH=$PROJECT_FOLDERS_LOCATION$1

if [[ $FOLDER_NAME =~ ^geome$ && $PROJECT_NAME =~ api$ || $2 =~ api|fe ]]; then
  cd /Users/$USER/Projects/geome/template
  /Users/$USER/Projects/geome/template/bin/setup
  cd $PROJECT_PATH
else
  mkdir -p ~/Projects/$1
  if [[ $2 =~ bash|ruby ]]; then
    cp $TEMPLATE_DIR/run.sh $TEMPLATE_DIR/install.sh ~/Projects/$1
  fi
  cd ~/Projects/$1
  git init .
  touch README.md
fi

# To preserve the change of directory
exec $SHELL

