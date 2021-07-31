# enable vim bindings
bindkey -v

# enable fzf (after vim ones so they aren't overwritten)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# overwrite necessary vim bindings (not needed with fzf)
# bindkey "^R" history-incremental-search-backward

# command aliases
alias 'll=ls -alhG'
alias 'lc=ls -aG'

# git aliases
alias 'gs=git status'
alias 'gc=git commit -m'
alias 'ga=git add'

# competitive programming
alias 'gxx=g++ -std=c++11 -O2 -Wall'
alias 'gxf=g++ -std=c++11 -O2 -Wall -DLOCAL_PROJECT'
