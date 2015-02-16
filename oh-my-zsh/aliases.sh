# Oh-My-Zsh aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias env-update="sh ~/.dotfiles/bin/update.sh"

# Vagrant
alias vm="ssh vagrant@127.0.0.1 -p 2222"
alias vaprobash="wget -O Vagrantfile http://bit.ly/vaprobash"
alias vagrant-cid="vagrant ssh -c 'cd /vagrant && composer install --prefer-dist --dev'"
alias vagrant-cud="vagrant ssh -c 'cd /vagrant && composer update --prefer-dist --dev'"
alias vagrant-csu="vagrant ssh -c 'composer self-update'"

# Nginx alias
alias nginx-start="sudo launchctl start homebrew.mxcl.nginx && echo 'Nginx started'"
alias nginx-stop="sudo launchctl stop homebrew.mxcl.nginx && echo 'Nginx stopped'"
alias nginx-restart="nginx-stop && nginx-start"
alias nginx-create="$DOTFILES/bin/nginx-create.sh"
alias nginx-remove="$DOTFILES/bin/nginx-remove.sh"
alias nginx-site="vim /usr/local/etc/nginx/sites-available"

# Composer
alias cid="composer install --prefer-dist"
alias cud="composer update --prefer-dist"
alias cidp="cid -vvv --profile"
alias cudp="cud -vvv --profile"
alias cidt="cid && t"
alias cudt="cud && t"
alias cidpt="cidp && t"
alias cudpt="cudp && t"
alias cidnl="cid && rm composer.lock"
alias cudnl="cud && rm composer.lock"
alias cidnlp="cidp && rm composer.lock"
alias cudnlp="cudp && rm composer.lock"

# Git
alias gvn="git svn"
alias gfa="git fetch --all"
alias gsfr="git submodule foreach git reset --hard HEAD"
alias gsfp="git submodule foreach git pull --rebase"
#alias gcontrib="git log --pretty=format:%an > | awk '{ ++c[$0]; } END { for(cc in c) printf "%5d %s\n",c[cc],cc; }' pipe> | sort -r"

# Laravel and Orchestra Platform
alias craft="composer create-project laravel/laravel"
alias orchestra="composer create-project orchestra/platform"
alias artisan="php artisan"
alias art="php artisan"
alias serve="php -S 127.0.0.1:8000 -t 'public'"
alias serve-build="php -S 127.0.0.1:8001 -t 'build'"

# Codeception
# alias codecept="./vendor/bin/codecept"
alias cc="./vendor/bin/codecept"
alias ct="./vendor/bin/codecept run"

# PHPUnit
alias t="phpunit"
alias tc="phpunit --coverage-text"
alias tch="phpunit --coverage-html"
alias vc="open ./build/coverage/index.html"

# General
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Copied to clipboard.'"
alias mailcatch="mailcatcher && sudo postfix start"
alias hipchat-please="sudo /Applications/HipChat.app/Contents/MacOS/HipChat > /dev/null 2>&1"
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias new-slack="open -n /Applications/Slack.app"

# Be nice
alias please="sudo"
alias kaiju="su - root"

# Be angry
alias hulksmash="rm -Rf"

# `cat` with beautiful colors. requires Pygments installed.
alias see='pygmentize -O style=monokai -f console256 -g'

# Flush DNS
alias flushdns="dscacheutil -flushcache"

# Get Line of Code
alias cloc="$DOTFILES/bin/loc.sh"
