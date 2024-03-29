#!/bin/bash

mkcd (){
	mkdir -p -- "$1" && cd -P -- "$1"
}

alias gll='g++ -std=c++20 -Wall -pedantic -Wno-long-long'
alias gll-mem='gll -fsanitize=address -fsanitize=null'
alias py='python'
alias ls='ls --color=auto --group-directories-first'
alias ll='ls -la'
alias grep='grep --color=auto'
alias batt='cbatticon'
alias view='vim -R'
alias nview='nvim -R'
alias ping-arch='ping archlinux.org'
