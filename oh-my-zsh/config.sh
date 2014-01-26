# Having issue with max open files (when running PHPUnit), increase the limit.
ulimit -n 2048

# Set UTF-8
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Should always give priority to homebrew.
PATH=/usr/local/sbin:/usr/local/bin:$PATH

# NPM
PATH=$PATH:/usr/local/share/npm/bin

# PHP (managed via homebrew)
PATH=$PATH:$(brew --prefix josegonzalez/php/php54)/bin

# RVM and Ruby
PATH=$PATH:$HOME/.rvm/bin:$HOME/.rvm/gems/ruby-1.9.3-p448/bin