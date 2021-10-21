function artisan() {
    if [ -f ./artisan ]; then
        php artisan "$@"
    else
        php vendor/bin/testbench "$@"
    fi
}

function composer-link() {
    composer config repositories.local '{"type": "path", "url": "'$1'"}' --file composer.json
}

function composer-tag() {
    composer config version "$1"
    git commit -sam "Prepare release v$1"
    git tag v$1
}

function composer-sync() {
    git remote add $1 $2
    git config remote.$1.tagopt --no-tags
    git remote set-url --push $1 no_push
    git fetch $1
}

function takeout-mysql() {
    mysql --user=root --password= --host=127.0.0.1
}

function takeout-mysql-create-db() {
    mysql --user=root --password= --host=127.0.0.1 -e "create database $1;"
}

function takeout-mysql-drop-db() {
    mysql --user=root --password= --host=127.0.0.1 -e "drop database $1;"
}

function list-nova-issue() {
    cd ~/Projects/laravel/nova/issues
    find . -maxdepth 1 -type d
}

function create-nova-issue() {
    # Require "https://github.com/nova-kit/setup-nova"
    cd ~/Projects/laravel/nova/issues
    laravel-nova new $1 --issue --install-optional --with-sample-data
    cd issue-$1
    rm README.md
    git init .
    git add .
    git commit -sam "First"
    valet link
    echo "You can browse the app from <http://issue-$1.test/nova>"
}

function github-nova-issue() {
    cd ~/Projects/laravel/nova/issues
    git clone git@github.com:nova-issues/issue-$1.git
    cd issue-$1
    composer install
    composer run post-root-package-install
    composer run post-create-project-cmd
    takeout-mysql-create-db issue_$1
    php artisan migrate
    php artisan nova:user
    valet link
    echo "You can browse the app from <http://issue-$1.test/nova>"
}

function drop-nova-issue() {
    cd ~/Projects/laravel/nova/issues/issue-$1
    valet unlink
    takeout-mysql-drop-db issue_$1
    cd ..
    rm -rf issue-$1
}

function mix-nova-prepare()
{
    if [ ! -f ./vendor/laravel/nova/webpack.mix.js ]; then
        cp ./vendor/laravel/nova/webpack.mix.js.dist ./vendor/laravel/nova/webpack.mix.js
        php artisan tinker --execute="file_put_contents(base_path('vendor/laravel/nova/webpack.mix.js'), str_replace('../nova-app/public', '../../../public', file_get_contents(base_path('vendor/laravel/nova/webpack.mix.js'))))"
    fi

    yarn  --cwd "./vendor/laravel/nova" install
}

function build-nova-suite()
{
    composer update
    rm ./webpack.mix.js
    cp ./webpack.mix.js.dist ./webpack.mix.js
    php -r "file_put_contents('./webpack.mix.js', str_replace('../nova-app/public', 'vendor/laravel/nova-dusk-suite/public', file_get_contents('./webpack.mix.js')));"
    php -r "file_put_contents('./webpack.mix.js', str_replace('.sourceMaps()', '//.sourceMaps()', file_get_contents('./webpack.mix.js')));"
    composer run dusk:prepare
    composer run dusk:assets
    artisan package:discover
    artisan nova:publish --force
}

function mix-nova-watch()
{
    mix-nova-prepare
    yarn  --cwd "./vendor/laravel/nova" run watch
}


function mix-nova-dev()
{
    mix-nova-prepare
    yarn  --cwd "./vendor/laravel/nova" run dev
}

function wip() {
    git commit -sm "wip"
}
