#!/bin/zsh

# Get target project path
DIR=`pwd`

if [ -f $DIR/vendor/bin/php-cs-fixer ]; then
    php -d memory_limit=512M vendor/bin/php-cs-fixer "$@"
else
    php -d memory_limit=512M ~/.composer/vendor/bin/php-cs-fixer "$@"
fi

