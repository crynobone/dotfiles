#!/bin/zsh

# Setup vimrc
echo "source ~/.dotfiles/vim/vimrc" > $HOME/.vimrc

# Setup basic Gem
gem install guard
gem install guard-phpunit2
gem install mailcatcher
gem install watson-ruby

# Setup basic Node.js
npm install -g less
npm install -g gulp
