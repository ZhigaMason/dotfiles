#!/bin/bash

mkcd (){
	mkdir -p -- "$1" && cd -P -- "$1"
}

alias ls='ls --color=auto'
alias ll='ls -la'
alias grep='grep --color=auto'
alias batt='cbatticon'
alias view='vim -R'
alias aweconfig="$EDITOR ~/.config/awesome/rc.lua"
alias awetheme="$EDITOR ~/.config/awesome/mytheme.lua"
