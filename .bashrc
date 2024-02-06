#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source ~/dotfiles/bashrc/set_vars.sh
for FILE in "$DOT_DIR"/bashrc/* ; do
	[ ! -f $FILE ] && echo "$FILE is not a regular file"
	[ ! -x $FILE ] && ! grep -q 'README' <<< "$FILE" && echo "$FILE is not executable by $USER"
	[ -f $FILE ] && [ -x $FILE ] && source $FILE
done

echo -e "Logged as $USER at ${HOSTNAME}\n$(date)"

[ -z  "$DISPLAY" ] && [ "$XDG_VTNR" -le 3 ] && exec startx 
