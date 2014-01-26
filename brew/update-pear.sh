#!/bin/zsh

# A basic bash script to setup phpunit after upgrading PHP.
sudo pear config-set auto_discover 1
sudo pear channel-discover pear.phpdoc.org
sudo pear install pear.phpqatools.org/phpqatools
sudo pear install phpdoc/phpDocumentor

echo "Please update your PATH to $(brew --prefix josegonzalez/php/php54)"
