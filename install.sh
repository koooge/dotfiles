#!/bin/bash

for f in .??*
do
  [ "$f" = ".git" ] && continue
  ln -snfv "$HOME"/dotfiles/"$f" "$HOME"/"$f"
done
