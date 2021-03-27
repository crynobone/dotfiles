#!/bin/zsh

# Get target project path

if [ -f ./artisan ]; then
    php artisan "$@"
else
    composer exec testbench "$@"
fi

