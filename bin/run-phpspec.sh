#!/bin/zsh

# Get target project path
DIR=`pwd`

if [ -f $DIR/vendor/bin/phpspec ]; then
    $DIR/vendor/bin/phpspec run
else
    phpspec run
fi
