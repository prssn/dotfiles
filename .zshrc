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
export PATH="$PATH:$HOME/.spicetify"
export PATH="$PATH:$HOME/.krew/bin"
export PATH="$PATH:$HOME/.local/bin"
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .cache --ignore node_moduels --ignore .git -g ""'

source $ZDOTDIR/aliases
source $ZDOTDIR/functions
source $ZDOTDIR/keybindings

autoload -Uz promptinit; promptinit;
autoload -Uz compinit; compinit;

zstyle ':completion:*' completer _expand_alias _complete _ignored
zstyle ':completion:*' regular true
