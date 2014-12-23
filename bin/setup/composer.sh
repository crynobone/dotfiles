#!/bin/zsh

REQUIRE=("laravel/envoy=~1" "halleck45/phpmetrics=~1.1" "illuminate/support=~5.0@dev" "illuminate/contracts=~5.0@dev")
REQUIREDEV=("pdepend/pdepend=~1" "phpmd/phpmd=~1" "covex-nn/phpcb=~1" "sebastian/phpcpd=~2" "squizlabs/php_codesniffer=~1" "phploc/phploc=~2" "codeception/codeception=~2" "phpdocumentor/phpdocumentor=~2" "phpspec/phpspec=~2.1")

cd ~/.composer
composer global require $REQUIRE --prefer-dist -vvv
composer global require $REQUIREDEV --prefer-dist --dev -vvv
