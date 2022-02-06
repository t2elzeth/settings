#!/bin/bash

BASE_DIR=$(pwd)

FILES=(".bashrc" ".bash_aliases" ".bash_functions" ".update")
# Delete all dotfiles that are gonna be symlinked
for i in "${FILES[@]}"; do
  rm -rf ~/"$i"
done
echo "Deleted all dotfiles"

# Create symlinks for dotfiles
for i in "${FILES[@]}"; do
  ln -s $BASE_DIR/"$i" ~/
done
echo "Created symlinks for dotfiles"

# Create symlink for themes and icons
#rm -rf $BASE_DIR/.themes/
#rm -rf $BASE_DIR/.icons/

#ln -s $BASE_DIR/.themes/ ~/
#ln -s $BASE_DIR/.icons/ ~/
