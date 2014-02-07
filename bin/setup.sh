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

# Setup phar
curl -sS http://gushphp.org/installer | php
chmod +x gush.phar
mv gush.phar /usr/local/bin/gush

wget http://codeception.com/codecept.phar
chmod +x codecept.phar
mv codecept.phar /usr/local/bin/codecept
