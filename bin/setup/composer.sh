#/bin/zsh

cp stub/composer.* ~/.composer/
cd ~/.composer
composer install --prefer-dist --dev -vvv
composer update --prefer-dist --dev -vvv
