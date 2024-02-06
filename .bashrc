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

for FILE in "$DOT_DIR"/bashrc/* ; do
	[ ! -f $FILE ] && echo "$FILE is not a regular file"
	[ ! -x $FILE ] && ! grep -q 'README' <<< "$FILE" && echo "$FILE is not executable by $USER"
	[ -f $FILE ] && [ -x $FILE ] && source $FILE
done

[ -z  "$DISPLAY" ] && [ "$XDG_VTNR" -le 3 ] && exec startx 
