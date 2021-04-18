#!/bin/zsh

# Get target project path

if [ -f ./artisan ]; then
    php artisan "$@"
else
    php vendor/bin/testbench "$@"
fi

