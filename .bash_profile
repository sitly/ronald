# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs
stty -ixon

PATH=$PATH:$HOME/bin:$HOME/.composer/vendor/bin

export PATH
