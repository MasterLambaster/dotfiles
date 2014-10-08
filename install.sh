#!/bin/sh
# Standalone installer

DOT_DIR=~/.dot

if type git; then
  :
else
  echo 'Please install git or update your path to include git executable'
  exit 1;
fi

if type ruby; then
  :
else
  echo 'Please install ruby or update your path to include ruby executable'
  exit 1;
fi

git clone https://github.com/MasterLambaster/dotfiles.git $DOT_DIR
cd $DOT_DIR && rake

echo "Done"
