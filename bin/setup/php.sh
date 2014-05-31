#/bin/zsh

# Setup Composer
curl -sS https://getcomposer.org/installer | php
chmod +x composer.phar
mv composer.phar /usr/local/bin/composer
composer -V

# Setup Laravel
wget http://laravel.com/laravel.phar
chmod +x laravel.phar
mv laravel.phar /usr/local/bin/laravel
laravel -V

# Setup Envoy
wget https://github.com/laravel/envoy/raw/master/envoy.phar
chmod +x envoy.phar
mv envoy.phar /usr/local/bin/envoy
envoy -V
