#!/bin/zsh

DIR=$1

find $DIR -name '*.php' | xargs wc -l
