#!/bin/zsh

export XDG_CONFIG_HOME=$HOME/.config
export XDG_DATA_HOME=$XDG_CONFIG_HOME/local/share
export XDG_CACHE_HOME=$XDG_CONFIG_HOME/cache
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export DOTFILES="$HOME/.dotfiles"
export HISTFILE="$ZDOTDIR/.zhistory"
export TERM="xterm-256color"
export EDITOR="nano"
export LC_ALL=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export HISTSIZE=10000
export SAVEHIST=10000

fpath=("${ZDOTDIR:-$HOME}/plugins/" $fpath)
fpath=("${ZDOTDIR:-$HOME}/plugins/zsh-clean" $fpath)
fpath=("${ZDOTDIR:-$HOME}/completions/" $fpath)
fpath=("${ZDOTDIR:-$HOME}/themes" $fpath)

source $ZDOTDIR/aliases
source $ZDOTDIR/functions

zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"
zsh_add_plugin "brandonroehl/zsh-clean"

autoload -Uz promptinit; promptinit
prompt clean 256