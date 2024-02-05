#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export DOT_DIR=~/dotfiles
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias batt='cbatticon'
alias aweconfig="$EDITOR ~/.config/awesome/rc.lua"
alias awetheme="$EDITOR ~/.config/awesome/mytheme.lua"
export WALLPAPER="~/Pictures/Hokusai_fuji.jpg"
export TERM="alacritty"
export CONFIGURATION_DIRECTORY='/home/mocksym/.config_main'

for FILE in "$DOT_DIR"/bashrc/* ; do
	[ ! -f $FILE ] && echo "$FILE is not a regular file"
	[ ! -x $FILE ] && ! grep -q 'README' <<< "$FILE" && echo "$FILE is not executable by $USER"
	[ -f $FILE ] && [ -x $FILE ] && source $FILE
done

[ -z  "$DISPLAY" ] && [ "$XDG_VTNR" -le 3 ] && exec startx 
