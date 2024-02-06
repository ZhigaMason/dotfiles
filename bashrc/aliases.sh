#!/bin/bash

mkcd (){
	mkdir -p -- "$1" && cd -P -- "$1"
}

alias ls='ls --color=auto --group-directories-first'
alias ll='ls -la'
alias grep='grep --color=auto'
alias batt='cbatticon'
alias view='vim -R'
