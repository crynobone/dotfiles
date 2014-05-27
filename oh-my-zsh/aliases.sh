# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"

# Nginx alias
alias nginx-start="sudo launchctl start homebrew.mxcl.nginx && echo 'Nginx started'"
alias nginx-stop="sudo launchctl stop homebrew.mxcl.nginx && echo 'Nginx stopped'"
alias nginx-restart="nginx-stop && nginx-start"
alias nginx-create="$DOTFILES/bin/nginx-create.sh"
alias nginx-remove="$DOTFILES/bin/nginx-remove.sh"
alias nginx-site="vim /usr/local/etc/nginx/sites-available"

# Composer
alias cidd="composer install --dev --prefer-dist"
alias cudd="composer update --dev --prefer-dist"
alias ciddt="cidd && t"
alias cuddt="cudd && t"

# Git
alias gfa="git fetch --all"
alias gsfr="git submodule foreach git reset --hard HEAD"
alias gsfp="git submodule foreach git pull --rebase"
#alias gcontrib="git log --pretty=format:%an > | awk '{ ++c[$0]; } END { for(cc in c) printf "%5d %s\n",c[cc],cc; }' pipe> | sort -r"

# Laravel and Orchestra Platform
alias craft="composer create-project laravel/laravel"
alias orchestra="composer create-project orchestra/platform"
alias artisan="php artisan"
alias art="php artisan"

# Unit testing
alias cc="./vendor/bin/codecept"
alias ct="./vendor/bin/codecept run"
alias t="phpunit"
alias tc="phpunit --coverage-text"
alias tch="phpunit --coverage-html"
alias vc="open ./build/coverage/index.html"

# General
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Copied to clipboard.'"
alias mailcatch="mailcatcher && sudo postfix start"
alias hipchat-please="sudo /Applications/HipChat.app/Contents/MacOS/HipChat > /dev/null 2>&1"
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"

# Be nice
alias please="sudo"
alias kaiju="su - root"

alias hulksmash="rm -Rf" 

# `cat` with beautiful colors. requires Pygments installed.
# sudo easy_install Pygments
alias see='pygmentize -O style=monokai -f console256 -g'

alias flushdns="dscacheutil -flushcache"
