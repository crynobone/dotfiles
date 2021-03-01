#!/bin/zsh

# Get target project path
DIR=`pwd`

if [ -f $DIR/artisan ]; then
    php artisan "$@"
else
    php vendor/bin/testbench "$@"
fi

