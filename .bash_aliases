#!/bin/bash

# Configs
alias reload="source ~/.bashrc"
alias bashconfig="nano ~/.bashrc"
alias sshconfig="nano ~/.ssh/config"
alias tmuxconfig="nano ~/.config/tmux/tmux.conf"

# File system
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ll="ls -lsa"
alias md="mkdir -p"
alias rd="rmdir"
alias rgrep="grep -Hr"

### Git
alias gs="git status"
alias gst="git status"
alias ga="git add"
alias gp="git push"
alias gl="git pull origin"
alias gb="git branch "
alias gc="git commit "
alias gd="git diff"
alias gco="git checkout "
alias glol="git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset'"
alias gsl="git stash list"
alias gsa="git stash apply"
alias gsp="git stash pop"

### NPM
alias nvp="npm version patch"
alias np="npm publish"

### Misc
alias whatsmyip="curl https://ipinfo.io/ip"
alias scanKeys='for key in $HOME/.ssh/*.pub; do ssh-keygen -l -f "${key}"; done | uniq'
alias ffs="sudo !!"
alias ktx=kubectx
alias kns=kubens
alias p=playerctl
alias j=journalctl
alias s=systemctl

if command -v kubectl &> /dev/null
then
    alias k='kubectl'; source <(kubectl completion bash); complete -o default -F __start_kubectl k
fi

if command -v git &> /dev/null
then
    alias dotf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'; source /usr/share/bash-completion/completions/git; __git_complete dotf __git_main
    alias g='git'; source /usr/share/bash-completion/completions/git; __git_complete g __git_main
fi

if command -v docker &> /dev/null
then
    alias d='docker'; source /usr/share/bash-completion/completions/docker.sh; complete -F _docker d
fi

### Specific to MacOS
if [[ `uname` == "Darwin" ]]; then
    alias flushDNS="sudo killall -HUP mDNSResponder;sudo kill mDNSResponderHelper;sudo dscacheutil -flushcache"
    alias syncTime="sudo sntp -sS time.euro.apple.com"
    alias mount_dev="mkdir -p ~/Media/dev.glimworks.se && sshfs -o idmap=user,noapplexattr,auto_cache,reconnect,defer_permissions,noappledouble,volname=dev.glimworks.se dev: ~/Media/dev.glimworks.se/"
    alias umount_dev="diskutil umount ~/Media/dev.glimworks.se"
fi

function generateKey {

  ssh-keygen -t ed25519 -f ~/.ssh/$1 -P "" -C $2
}

function workspace-upload {

  echo "Uploading workspace..."
  rsync -raz --exclude=node_modules --exclude=build --exclude=yay --delete --progress /home/robin/Workspace dev:
  echo "Done."
}

function workspace-download {

  echo "Downloading workspace..."
  rsync -raz --exclude=node_modules --exclude=build --exclude=yay --delete --progress dev:Workspace /home/robin
  echo "Done."
}