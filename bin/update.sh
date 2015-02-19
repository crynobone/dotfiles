#!/bin/zsh

brew update
composer self-update
composer global update --prefer-dist -vvv
npm update -g
