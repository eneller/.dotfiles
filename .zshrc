# The following lines were added by compinstall

#zstyle ':completion:*' completer _complete _ignored _correct _approximate
#zstyle ':completion:*' matcher-list 'r:|[._-'\''"`´,;:]=** r:|=**'
#zstyle ':completion:*' original true
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' special-files true

zstyle :compinstall filename '/home/en/.zshrc'

autoload -Uz compinit
compinit
zstyle ':completion:*' menu select #enable navigatable menu for completion
_comp_options+=(globdots)		# Include hidden files.
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
setopt autocd 
setopt extendedglob
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install

#load plugins

#load theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme


#load syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#load fish-completion
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh # needs to be sourced after syntax highlighting
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#737373,bg=translucent"

alias ls='ls -hN --color=auto --group-directories-first'