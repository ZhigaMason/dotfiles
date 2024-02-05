#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias batt='cbatticon'
alias aweconfig="$EDITOR ~/.config/awesome/rc.lua"
alias awetheme="$EDITOR ~/.config/awesome/mytheme.lua"
export WALLPAPER="~/Pictures/Hokusai_fuji.jpg"
export TERM="alacritty"
export CONFIGURATION_DIRECTORY='/home/mocksym/.config_main'
PS1='[\u@\h \W]\$ '

[ -z  "$DISPLAY" ] && [ "$XDG_VTNR" -le 3 ] && exec startx 
