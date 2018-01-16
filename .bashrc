# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
    if [ -f /usr/share/bash-completion/bash_completion ]; then
        . /usr/share/bash-completion/bash_completion
    elif [ -f /etc/bash_completion ]; then
        . /etc/bash_completion
    fi
fi

HISTCONTROL=ignoreboth
HISTSIZE=2048
HISTFILESIZE=2048

shopt -s histappend
shopt -s cmdhist

# Update history after every command
export PROMPT_COMMAND="history -a; history -n"

shopt -s checkwinsize
shopt -s globstar

# Nice shell prompt
export PS1="\n\[\033[01;32m\]${USER}@${HOSTNAME}: \[\033[01;31m\]\W \[\033[00;31m\]\$\[\033[0m\] "

# Default to having some colour
alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'

# Helpful aliases
alias ll='ls -halFv'
alias la='ls -Av'
alias l='ls -CFv'

# Set terminal window title to this machines name
printf '\033]2;%s\033\\' "${USER}@${HOSTNAME}"

# Set default editor to vim
export VISUAL=vim

