# Oh-My-Zsh aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias env-update="sh $DOTFILES/bin/update.sh"

# Composer
alias cul="COMPOSER_MEMORY_LIMIT=-1"
alias cr="COMPOSER_MEMORY_LIMIT=-1 composer require"
alias cid="COMPOSER_MEMORY_LIMIT=-1 composer install --prefer-dist"
alias cud="COMPOSER_MEMORY_LIMIT=-1 composer update --prefer-dist"
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
alias gt="git tag"
alias gfa="git fetch --all"
alias gsfr="git submodule foreach git reset --hard HEAD"
alias gsfp="git submodule foreach git pull --rebase"
alias nah="git add .;git reset --hard HEAD"
alias gsee="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glint="git status -s | grep php | awk '{print \$2}' | xargs -n1 php -l 2>/dev/null"
alias gdiet="sh $DOTFILES/bin/gdiet.sh"
alias glarge="sh $DOTFILES/bin/glarge.sh"

#alias gcontrib="git log --pretty=format:%an > | awk '{ ++c[$0]; } END { for(cc in c) printf "%5d %s\n",c[cc],cc; }' pipe> | sort -r"

# Laravel and Orchestra Platform
alias craft="composer create-project laravel/laravel"
alias orchestra="composer create-project orchestra/platform"
alias art="$DOTFILES/bin/run-artisan.sh"
alias serve="php -S 127.0.0.1:8000 -t 'public'"
alias serve-build="php -S 127.0.0.1:8001 -t 'build'"

# Codeception
# alias codecept="./vendor/bin/codecept"
alias cc="./vendor/bin/codecept"
alias ct="./vendor/bin/codecept run"

# PHPUnit
alias t="$DOTFILES/bin/run-phpunit.sh"
alias dusk="t -c phpunit.dusk.xml"
alias dusk-headless="CI=true dusk"

# General
alias sshkey="cat ~/.ssh/id_rsa.pub | pbcopy && echo 'Copied to clipboard.'"
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias csfixer="$DOTFILES/bin/run-php-cs-fixer.sh fix"
alias csfixer-test="php-cs-fixer tests/ --level=psr2 --fixers=-psr0,align_double_arrow,concat_without_spaces,double_arrow_multiline_whitespaces,duplicate_semicolon,empty_return,extra_empty_lines,include,join_function,multiline_array_trailing_comma,new_with_braces,no_blank_lines_after_class_opening,no_empty_lines_after_phpdocs,object_operator,operators_spaces,phpdoc_indent,phpdoc_separation,phpdoc_short_description,phpdoc_to_comment,phpdoc_trim,phpdoc_type_to_var,phpdoc_var_without_name,single_array_no_trailing_comma,remove_leading_slash_use,remove_lines_between_uses,short_array_syntax,spaces_cast,standardize_not_equal,unalign_double_arrow,unalign_equals,unused_use,whitespacy_lines,visibility"
alias eject="/usr/bin/drutil eject"

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
