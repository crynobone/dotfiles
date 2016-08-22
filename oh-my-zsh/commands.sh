function eject {
    /usr/bin/drutil eject;
}

function orchestral {
    PROJECT=$1
    cd ~/Sites
    orchestra $PROJECT 3.3.x --prefer-dist -vvv --profile -s dev

    if [ -d ~/Sites/$PROJECT ]; then
        cd $PROJECT
        git init
        git add .
        git commit -sam "Initial Commit."
        git remote add orchestra git@github.com:orchestral/platform.git
        git config remote.orchestra.tagopt --no-tags
        git remote set-url --push orchestra no_push
        git fetch orchestra
    fi
}

