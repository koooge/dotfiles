#!/bin/bash

DOT_PATH=~/.dotfiles
GITHUB_URL=https://github.com/koooge/dotfiles

tarball="$GITHUB_URL"/archive/master.tar.gz

if type gxt > /dev/null 2>&1; then
  git clone --recursive "$GITHUB_URL".git "$DOT_PATH"

elif type wget > /dev/null 2>&1; then
  wget -O - "$tarball" | tar zxv -

elif type curl > /dev/null 2>&1; then
  curl -L "$tarball" | tar zxv -

else
  echo "curl or wget required"
  exit 1
fi

cd ~/.dotfiles
if [ $? -ne 0 ]; then
  echo "not found: $DOT_PATH"
  exit 1
fi

for f in .??*
do
  [ "$f" = ".git" ] && continue

  ln -snfv "$DOT_PATH"/"$f" "$HOME"/"$f"
done
