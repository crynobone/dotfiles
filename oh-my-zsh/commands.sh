function composer-link() {
    composer config repositories.local '{"type": "path", "url": "'$1'"}' --file composer.json
}

function takeout-mysql() {
    mysql -uroot -p -h127.0.0.1
}

function takeout-mysql-create-db() {
    mysql -uroot -p -h127.0.0.1 -e "create database $1;"
}


function takeout-mysql-drop-db() {
    mysql -uroot -p -h127.0.0.1 -e "drop database $1;"
}

