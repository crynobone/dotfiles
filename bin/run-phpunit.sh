#!/bin/zsh

if [ -f ./vendor/bin/phpunit ]; then
    php vendor/bin/phpunit "$@"
else
    phpunit "$@"
fi

