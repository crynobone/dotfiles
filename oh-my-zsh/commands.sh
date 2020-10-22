function composer-link() {
    composer config repositories.local '{"type": "path", "url": "'$1'"}' --file composer.json
}

function composer-sync() {
    git remote add $1 $2
    git remote.$1.tagopt --no-tags
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
    cd ~/Projects/laravel/nova/issues
    laravel new issue-$1
    cd issue-$1
    composer config repositories.local '{"type": "composer", "url": "https://nova.laravel.com"}' --file composer.json
    composer require "laravel/nova:*"
    php artisan nova:install
    takeout-mysql-create-db issue_$1
    php artisan migrate
    php artisan nova:user
    rm README.md
    git init .
    git add .
    git commit -sam "First"
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
