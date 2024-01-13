# Enable vim bindings
bindkey -v

# Enable colors
autoload -U colors && colors

# Set prompt structure
PROMPT="%B%{$fg[blue]%}[%{$fg[white]%}%n%{$fg[red]%}@%{$fg[white]%}%m%{$fg[blue]%}] %(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )%{$fg[cyan]%}%c%{$reset_color%} "

# Enable autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^E' edit-command-line # this needs to be added after vim bindings are enabled

# Enable fzf (after vim ones so they aren't overwritten)
# [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Overwrite necessary vim bindings (not needed with fzf)
bindkey "^R" history-incremental-search-backward

# Command aliases
alias 'll=ls -alhG'
alias 'lc=ls -aG'

# Git aliases
alias 'gs=git status'
alias 'gc=git commit -m'
alias 'ga=git add'

# Competitive programming
alias 'gxx=g++ -std=c++11 -O2 -Wall'
alias 'gxf=g++ -std=c++11 -O2 -Wall -DLOCAL_PROJECT'

# Load syntax highlighting (this must be the last command)
# If you can find a succinct and clean way to get syntax highlighting without this module, use that instead and delete this git submodule
# Maybe you can just open the command in vim if you want syntax highlighting
source $HOME/.dotfiles/submodules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
