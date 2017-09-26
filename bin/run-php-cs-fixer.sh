#!/bin/zsh

# Get target project path
DIR=`pwd`

if [ -f $DIR/vendor/bin/php-cs-fixer ]; then
    php vendor/bin/php-cs-fixer "$@"
else
    php-cs-fixer "$@"
fi

