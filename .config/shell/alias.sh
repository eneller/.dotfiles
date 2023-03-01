
alias ls='exa'											# make output more readable and show directories first
alias ll='ls -l'
alias la='ls --all'
alias grep='rg'														# colorize grep output, set GREP_COLORS
alias cp="cp -i"                                                					# Confirm before overwriting something
alias df='df -h'                                                					# Human-readable sizes
alias vi='nvim'                                            					# Show sizes in MB
alias r='R'
alias xar="xarchiver"

# Add an "alert" alias for long running commands.  Use like so: 'sleep 10; alert'
alias notify='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#Add a "dotfiles" alias for .dotfile git repo
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
#alias 'dotfiles-update'='dotfiles commit -a && dotfiles push'


colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

# set title in zsh (for alacritty)
title()
{
  echo -e "\e]2;$1\007";
}

pwd()
{
  echo "$PWD/$1"
}

