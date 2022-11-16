# set prompt to pure (pure must be installed)
fpath+=/opt/homebrew/share/zsh/site-functions # pure prompt workaround for M1 mac
autoload -U promptinit; promptinit
prompt pure

# search history with arrow keys
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up (binding may differ)
bindkey "^[[B" down-line-or-beginning-search # Down (binding may differ)

# pyenv setup (pyenv must be installed)
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# ls output
alias ls='ls --color=auto'
alias ll='ls -la'

# grep output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# shortcuts
alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias h='history'
alias c='clear'

# defaults
alias du='du -ch'
alias mkdir='mkdir -pv'

# rerun last command with sudo
alias please='sudo $(fc -ln -1)'

# pretty git log alias
alias gll='git log --oneline --decorate --graph --all'

# cd to git project top level
alias cg='cd `git rev-parse --show-toplevel`'

# syntax highlighting (must be installed)
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh