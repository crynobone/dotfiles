#!/bin/zsh

# Get target project path
DIR=`pwd`

if [ -f $DIR/vendor/bin/phpunit ]; then
    php vendor/bin/phpunit "$@"
else
    phpunit "$@"
fi

