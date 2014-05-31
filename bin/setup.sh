#!/bin/zsh

# Setup vimrc
echo "Setup .vimrc"
echo "source ~/.dotfiles/vim/vimrc" > $HOME/.vimrc

echo "Setup Ruby"
sh ./setup/ruby.sh

echo "Setup Node.js"
sh ./setup/node.sh

echo "Setup PHP"
sh ./setup/php.sh

echo "Setup Composer"
sh ./setup/composer.sh
