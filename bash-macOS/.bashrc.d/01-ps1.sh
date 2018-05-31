
# Eliminate the lame macOS PS1

if [ $BASH_VERSINFO -lt 4 ]; then
	_PS1 ()
	{
	    local PRE= NAME="$1" LENGTH="$2";
	    [[ "$NAME" != "${NAME#$HOME/}" || -z "${NAME#$HOME}" ]] &&
		PRE+='~' NAME="${NAME#$HOME}" LENGTH=$[LENGTH-1];
	    ((${#NAME}>$LENGTH)) && NAME="/.../${NAME:$[${#NAME}-LENGTH+4]}";
	    echo "$PRE$NAME"
	}
	export PS1="[🙈@❄️l\h❄️h:$(_PS1 "$PWD" 20)] $ "
else
	export PROMPT_DIRTRIM=3
	#export PS1="[🙈@❄️ \h❄️: \W] $ "
	export PS1="[\u@\h: \W] $ "
fi
