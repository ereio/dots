#
# ~/.bashrc
# theme colors #BF4040
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

## ALIASES
alias ls='ls -ah --color=auto'
alias grep='grep --color=auto'
alias fuck='sudo iptables -t mangle -A POSTROUTING -j TTL --ttl-set 64'
alias xopen='xdg-open $1'
alias iotop='sudo iotop -a'
alias vscode='flatpak list'
alias pip="pip3"
alias w3mimgdisplay="/usr/lib/w3m/w3mimgdisplay"

## FAVORITES
# ranger
# gotop
# iotop
# htop
# vim

## DEV LIBS
# gcc
# python3-dev
# musl-dev
# libffi-dev
# openssl-dev
# cryptography

# LOCAL GLOBALS
## colors and tools
cstart='\e['
cend='m'
creset='\e[m'
cyan='0;36'
magenta='0;35'
blue='0;34'
op='\['
eop='\]'


## globals
# PS1='\u@\h \W >'
# PS1='\[\e[0;36m\]<\e[m\[$(tput bold)\]\u\[$(tput sgr0)\]@\h \W\e[0;36m>\e[m\e[0;35m>\e[m\e[0;34m>\e[m '
# PS1="\[$cstart$cyan$cend\]<\[$creset\]\u@\h \W\[$cstart$cyan$cend\]>\[$cstart$magenta$cend\]>\[$cstart$blue$cend\]>\[$creset\] "
# PS1="\[$cstart$magenta$cend\]< \[$creset\]\u@\h \W\[$cstart$magenta$cend\] >\[$creset\] "
PS1="\[$creset\]\u@\h \W\[$cstart$cyan$cend\] >\[$creset\] "

BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/vim

# PERM GLOBALS
## Theming
export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33'

## Config
export XDG_CONFIG_HOME=$HOME/.config
NPM_PACKAGES="${HOME}/.npm-packages"
USER_BINS="${HOME}/.local/bin"
export PATH="$NPM_PACKAGES/bin:$USER_BINS:$PATH"
#export ANDROID_HOME=$HOME/development/sdks/androidSDK/android-sdk-linux
#export ANDROID_TOOLS=$ANDROID_HOME/tools/bin
#export ANDROID_PLATFORM_TOOLS=$ANDROID_HOME/platform-tools
#export ANDROID_BUILD_TOOLS=$ANDROID_HOME/build-tools/25.0.3
#export FLUTTER_HOME=$HOME/development/sdks/flutter/bin
#export DART_HOME=$FLUTTER_HOME/cache/dart-sdk/bin
#export PATH=$FLUTTER_HOME:$DART_HOME:$ANDROID_TOOLS:$ANDROID_PLATFORM_TOOLS:$PATH
#export JAVA_HOME=/usr/bin/jvm/java-8-oracle
#export JRE_HOME=$JAVA_HOME/jre/bin

# Unset manpath so we can inherit from /etc/manpath via the /home/ereio/.npm-packages/share/man:/share/man:/share/man:/usr/local/man:/usr/local/share/man:/usr/share/man command
#unset MANPATH # delete if you already modified MANPATH elsewhere in your config
#export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# auto start x session
#if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi
