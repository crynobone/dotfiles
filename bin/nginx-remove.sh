#!/bin/zsh

NAME=$1

DIR=/usr/local/etc/nginx

if [ -f $DIR/sites-enabled/$NAME.dev.conf ]; then
    rm $DIR/sites-enabled/$NAME.dev.conf
fi

if [ -f $DIR/sites-available/$NAME.dev.conf ]; then
    rm $DIR/sites-available/$NAME.dev.conf
fi
