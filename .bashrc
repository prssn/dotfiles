# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

unset rc

HISTCONTROL=ignoredups:ignorespace
HISTSIZE=1000
HISTFILESIZE=2000

shopt -s histappend

case "$TERM" in
    xterm-color) color_prompt=yes;;
	xterm-256color) color_prompt=yes;;
esac

PS1='\w \[\e[92m\]$(git branch --show-current 2>/dev/null)\n\[\e[0m\]> '

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi