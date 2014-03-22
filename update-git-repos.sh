#!/bin/bash

# Place this file inside the directory that contains git repos.
# run ./update-git-repos.sh to update all the git repos using `git pull`

for file in */ ; do
  if [[ -d "$file" && ! -L "$file" ]]; then
    echo "Updating $file";
    cd "$file";
    git pull;
  fi;
done
