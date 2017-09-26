## Requirement

* Mac OSX 10 (tested on Maverick)
* [Homebrew](https://brew.sh/)
* [iTerm2](https://iterm2.com/)
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

## Installation

Setup configuration.

    $ git clone git@github.com:crynobone/dotfiles.git ~/.dotfiles

Install submodules

    $ cd ~/.dotfiles
    $ git submodule init
    $ git submodule update

## Install Brew

After setting up homebrew, you can run the following to install all the base application:

    brew bundle

## Vim Configuration

First you need to install Vundle

    $ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Next create folders under `~/.vim` directory.

    $ cd ~/.vim
    $ md colors backup swap

Add `base16-default` color scheme.

    $ cp ~/.dotfiles/vim/base16-vim/colors/base16-default.vim ~/.vim/colors/

Add the following code to `~/.vimrc`.

    source ~/.dotfiles/vim/vimrc

Open `vim` and run the following command:

    :PluginInstall
