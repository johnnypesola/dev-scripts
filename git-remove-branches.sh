#!/bin/bash
# git-remove-branches.sh

if [[ $# != 1 ]] ; then
    echo 'Example usage: '
    echo "$0 branchprefix-"
    exit 0
fi

read -p "Are you sure you want to remove branches starting with '$1'? " -n 1 -r
echo    # (optional) move to a new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
   echo "Removing branches containing name '$1'"
   git branch --list "$1*" | xargs git branch -d
fi
