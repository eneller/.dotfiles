# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.config/shell/alias.sh
export EDITOR=nvim
export VISUAL=$EDITOR
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

export HISTCONTROL=ignoreboth:erasedups
#unsetopt beep																		# try disabling annoying beep sounds
setopt nobeep
autoload -Uz compinit																# load completion
compinit
_comp_options+=(globdots)															# Include hidden files.
setopt autocd 																		# allow cd by only entering directory without cd command
setopt extendedglob																	# Extended globbing. Allows using regular expressions with *
setopt correct                                                  					# Auto correct mistakes
setopt numericglobsort                                          					# Sort filenames numerically when it makes sense
setopt appendhistory    		
setopt GLOB_DOTS
#share commands between terminal instances or not
unsetopt SHARE_HISTORY
#setopt SHARE_HISTORY

zstyle ':completion:*' special-dirs true											# complete hidden directories
zstyle ':completion:*' special-files true											# complete hidden files
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'       					# Case insensitive tab completion
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"         					# Colored completion (different colors for dirs/files/etc)
zstyle ':completion:*' menu select 													# enable navigable menu for completion
zstyle ':completion:*' rehash true													# Automatically update PATH entries
zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*'								# Smart matching of dashed values, e.g. f-b matching foo-bar
zstyle ':completion:*' group-name ''												# Group results by category
zstyle ':completion:*' insert-tab false											# Don't insert a literal tab when trying to complete in an empty buffer
zstyle ':completion:*' completer _complete _ignored _correct _approximate			# Enable approximate completions
zstyle ':completion:*' verbose true													# Verbose completion results
#zstyle ':completion:*' show-completer true	
#zstyle ':completion:*' matcher-list 'r:|[._-'\''"`´,;:]=** r:|=**'
#zstyle ':completion:*' original true
#zstyle :compinstall filename '/home/en/.zshrc'
										# Show message while waiting for completion

# Pretty messages during pagination
zstyle ':completion:*' list-prompt '%SAt %p: Hit TAB for more, or the character to insert%s'
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'

# Nicer format for completion messages
#zstyle ':completion:*:descriptions' format '%U%B%d%b%u'							#shows categories of commands like "built-in" and "external"
#zstyle ':completion:*:corrections' format '%U%F{green}%d (errors: %e)%f%u'
#zstyle ':completion:*:warnings' format '%F{202}%BSorry, no matches for: %F{214}%d%b'

# Prettier completion for processes
#zstyle ':completion:*:*:*:*:processes' force-list always
zstyle ':completion:*:*:*:*:processes' menu yes select
zstyle ':completion:*:*:*:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u $USER -o pid,user,args -w -w"


autoload -Uz bracketed-paste-magic													# allow links to be read without escaping
zle -N bracketed-paste bracketed-paste-magic
autoload -Uz url-quote-magic
zle -N self-insert url-quote-magic

WORDCHARS=${WORDCHARS//\/[&.;]}                                 					# Don't consider certain characters part of the word

#bindkey -e																			# use emacs key layout
bindkey '^[[1;5D' backward-word                                 					# 'CTRL + leftarrow'  
bindkey '^[[1;5C' forward-word                                  					# 'CTRL + rightarrow'
bindkey '^H' backward-kill-word                                 					# delete previous word with ctrl+backspace
bindkey '^[[3~' delete-char															# enable delete key
bindkey '^[[3;5~' kill-word															# 'CTRL + DEL'
bindkey '^Z' undo                                             						# 'CTRL + z' undo last action



# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"


if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
  ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
	ZSH_HIGHLIGHT_STYLES[default]=none
	#ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=009,standout
	#ZSH_HIGHLIGHT_STYLES[alias]=fg=white,bold
	#ZSH_HIGHLIGHT_STYLES[builtin]=fg=white,bold
	#ZSH_HIGHLIGHT_STYLES[function]=fg=white,bold
	#ZSH_HIGHLIGHT_STYLES[command]=fg=white,bold
	#ZSH_HIGHLIGHT_STYLES[precommand]=fg=#eaff00,bold
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
fi

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 			# load fish-completion, needs to be sourced after syntax highlighting
	ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#737373,bg=translucent"

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


#PS1='[\u@\h \W]\$ '

