#OPTIONS SECTION

unsetopt beep																		# try disabling annoying beep sounds
#setopt nobeep
xset b off
autoload -Uz compinit																# load completion
compinit
_comp_options+=(globdots)															# Include hidden files.
setopt autocd 																		# allow cd by only entering directory without cd command
setopt extendedglob																	# Extended globbing. Allows using regular expressions with *
setopt correct                                                  					# Auto correct mistakes
setopt numericglobsort                                          					# Sort filenames numerically when it makes sense
setopt appendhistory    					                                        # Immediately append history instead of overwriting

zstyle ':completion:*' special-dirs true											# complete hidden directories
zstyle ':completion:*' special-files true											# complete hidden files
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       					# Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         					# Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' menu select 													# enable navigable menu for completion
zstyle ':completion:*' rehash true													# Automatically update PATH entries
zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*'								# Smart matching of dashed values, e.g. f-b matching foo-bar
zstyle ':completion:*' group-name ''												# Group results by category
# zstyle ':completion:*' insert-tab false											# Don't insert a literal tab when trying to complete in an empty buffer

autoload -Uz bracketed-paste-magic													# allow links to be read without escaping
zle -N bracketed-paste bracketed-paste-magic
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

WORDCHARS=${WORDCHARS//\/[&.;]}                                 					# Don't consider certain characters part of the word


#ALIAS SECTION

alias ls='ls -hN --group-directories-first'											# make output more readable and show directories first
alias cp="cp -i"                                                					# Confirm before overwriting something
alias df='df -h'                                                					# Human-readable sizes
alias free='free -m'                                            					# Show sizes in MB

#KEYBINDingS SECTION (use 'cat -v' or 'od -c' to see raw keyboard output)

bindkey -e																			# use emacs key layout
bindkey '^[[1;5D' backward-word                                 					# 'CTRL + leftarrow'  
bindkey '^[[1;5C' forward-word                                  					# 'CTRL + rightarrow'
bindkey '^H' backward-kill-word                                 					# delete previous word with ctrl+backspace
bindkey '^[[3~' delete-char															# enable delete key
bindkey '^[[3;5~' kill-word															# 'CTRL + DEL'
bindkey '^Z' undo                                             						# 'CTRL + z' undo last action


#PLUGIN SECTION

if [[ -x /usr/lib/command-not-found ]] ; then										# try loading suggestions to install when command was not found
        function command_not_found_handler() {
                /usr/lib/command-not-found --no-failure-msg -- $1
        }
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme					# load theme
#source /usr/share/doc/find-the-command/ftc.zsh quiet								# load command not found, might need `systemctl enable pacman-files.timer`

source /usr/share/zsh/plugins/zsh-background-notify/bgnotify.plugin.zsh				# load notifications for long comands
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh	# load syntax highlighting, everything except autosuggestions should be loaded before this
	ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
	ZSH_HIGHLIGHT_STYLES[default]=none
	#ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
	#ZSH_HIGHLIGHT_STYLES[alias]=fg=white,bold
	#ZSH_HIGHLIGHT_STYLES[builtin]=fg=white,bold
	#ZSH_HIGHLIGHT_STYLES[function]=fg=white,bold
	#ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
	ZSH_HIGHLIGHT_STYLES[precommand]=fg=#eaff00,bold
	#ZSH_HIGHLIGHT_STYLES[commandseparator]=none
	#ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=009
	#ZSH_HIGHLIGHT_STYLES[path]=fg=214,underline
	#ZSH_HIGHLIGHT_STYLES[globbing]=fg=063
	#ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=white,underline
	#ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=none
	#ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=none
	#ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=none
	#ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=063
	#ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=063
	#ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=009
	#ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=009
	#ZSH_HIGHLIGHT_STYLES[assign]=none

	[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh									# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.


source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 			# load fish-completion, needs to be sourced after syntax highlighting
	ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#737373,bg=translucent"



#zstyle ':completion:*' completer _complete _ignored _correct _approximate
#zstyle ':completion:*' matcher-list 'r:|[._-'\''"`´,;:]=** r:|=**'
#zstyle ':completion:*' original true

#zstyle :compinstall filename '/home/en/.zshrc'






#if [[ -f ~/.dircolors ]] ; then
 #   eval $(dircolors -b ~/.dircolors)     
#elif [[ -f /etc/DIR_COLORS ]] ; then
 #   eval $(dircolors -b /etc/DIR_COLORS)
#fi




