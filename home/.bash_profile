#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.profile ]] && . ~/.profile

# follow XDG base dir specification
export XDG_CONFIG_HOME="$HOME/.config"

# add scripts to path
export PATH="$XDG_CONFIG_HOME/scripts:$PATH"

if [[ "$(tty)" == "/dev/tty1" ]]; then
	#start-hyprland &> /dev/null;
	#hyprctl reload;\
	startx;
fi
