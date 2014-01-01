# A basic bash script to setup phpunit after upgrading PHP.
sudo pear config-set auto_discover 1
sudo pear install pear.phpqatools.org/phpqatools

echo "Please update your PATH to $(brew --prefix josegonzalez/php/php54)"
