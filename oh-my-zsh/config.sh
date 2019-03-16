# Having issue with max open files (when running PHPUnit), increase the limit.
ulimit -n 4096

# Set UTF-8
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Export editor
export EDITOR="vim"

# Composer
export COMPOSER_DISABLE_XDEBUG_WARN=1
export COMPOSER_PROCESS_TIMEOUT=20000

# Should always give priority to homebrew.
PATH=/usr/local/sbin:/usr/local/bin:$PATH

# NPM
PATH=$PATH:/usr/local/share/npm/bin

# Composer
PATH=$PATH:$HOME/.composer/vendor/bin

# PHP (managed via homebrew)
PATH=$PATH:$(brew --prefix php@7.2)/bin

# RVM and Ruby
PATH=$PATH:$HOME/.rvm/bin:$GEM_HOME/bin

