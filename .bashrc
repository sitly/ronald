# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
if [ -f ~/profile/ronald.sh ]; then
	. ~/profile/ronald.sh
fi
