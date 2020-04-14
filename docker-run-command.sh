#!/bin/bash
# docker-run-command.sh

if [[ $# != 2 ]] ; then
    echo 'Example usage: '
    echo "$0 stop containers-containing-this"
    exit 0
fi

echo "Running '$1' on containers containing name '$2'"
docker ps -aq --filter "name=$2" | xargs docker $1
