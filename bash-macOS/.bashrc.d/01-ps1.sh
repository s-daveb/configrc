
# Eliminate the lame macOS PS1

#if [ $BASH_VERSINFO -lt 4 ]; then
#	echo "UPGRADE BASH YOU STUPID MONKEY";
#else
#	#export PROMPT_DIRTRIM=3
#	#export PS1="${YELLOW}[\u@\h: \W]\$${NORMAL} "
#	export PS1="[\u@\h: \W]$ "
#fi
#
#if [ -n "$TMUX" ]; then
#	export PS1="[${YELLOW}T${NORMAL}]${PS1}"
#fi

eval "$(starship init bash)"
