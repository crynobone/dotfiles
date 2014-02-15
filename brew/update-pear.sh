#!/bin/zsh

# A basic bash script to setup phpunit after upgrading PHP.
pear config-set auto_discover 1
pear channel-discover pear.phpdoc.org
pear install pear.phpqatools.org/phpqatools
pear install phpdoc/phpDocumentor

echo "Please update your PATH to $(brew --prefix josegonzalez/php/php55)"
