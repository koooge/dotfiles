#!/bin/bash

DOT_PATH=~/.dotfiles
GITHUB_URL=https://github.com/koooge/dotfiles

tarball=${GITHUB_URL}/archive/master.tar.gz

# get dotfiles from github
if type git > /dev/null 2>&1; then
  git clone --recursive ${GITHUB_URL}.git $DOT_PATH

elif type wget > /dev/null 2>&1; then
  wget -O - ${tarball} | tar zxv
  mv -f dotfiles-master $DOT_PATH

elif type curl > /dev/null 2>&1; then
  curl -L ${tarball} | tar zxv
  mv -f dotfiles-master $DOT_PATH

else
  echo "curl or wget required"
  exit 1
fi

cd ~/.dotfiles
if [ $? -ne 0 ]; then
  echo "not found: ${DOT_PATH}"
  exit 1
fi


deploy() {
  for f in .??*
  do
    [ "$f" = ".git" ] && continue

    ln -snfv ${DOT_PATH}/${f} ${HOME}/${f}
  done
}


initialize() {
  : # TODO: implements
}


if [ "$1" = "deploy" -o "$1" = "d" ]; then
  deploy
elif [ "$1" = "init" -o "$1" = "i" ]; then
  initialize
else
  deploy
fi
