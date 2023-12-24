# Enable vim bindings
bindkey -v

# Enable colors
autoload -U colors && colors # Enable git integration for the prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{red}(%b%u%c)'
zstyle ':vcs_info:*' enable git

# Set prompt structure
NEWLINE=$'\n' # only way found to add new line into the prompt variable
PROMPT='%B%{$fg[blue]%}[%{$fg[white]%}%n%{$fg[red]%}@%{$fg[white]%}%m%{$fg[blue]%}] %F{red}${vcs_info_msg_0_}%f %{$fg[cyan]%}%~%{$reset_color%} ${NEWLINE}> '

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
source $HOME/.dotfiles/submodules/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
