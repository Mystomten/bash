parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

export PS1='\[\033[1m\033[0;36m\][\A] \[\033[1m\033[0;33m\]\u \[\033[1m\033[0;35m\]\w\[\033[0m\]\[\033[32m\]$(parse_git_branch)\[\033[00m\] '
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:~/bin:$PATH
export EDITOR='vim'

# Git stuff
alias gs='git status'
alias ga='git add'
alias go='git checkout'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gds='git diff --stat'
alias gdss='git diff --shortstat'
alias gfp='git fetch -p'
alias gpp='git pull -p'

## Fancy git graphs
alias glg='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(auto)%d%C(reset)"'
alias glgl='git log --graph --abbrev-commit --decorate --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n""          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)"'

# Show 10 latest updated branches
alias gbl='git for-each-ref --count=10 --sort=-committerdate refs/heads/ --format="%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))"'
alias gbr='git for-each-ref --count=10 --sort=-committerdate refs/remotes/origin --format="%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))"'

# Git branch autocomplete
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

# Moving around
alias cdoc='cd ~/Documents'
alias cdw='cd ~/Documents/Work'
alias u='cd ..'
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'

# Commands
alias ll='ls -FGlAhp'
alias f='open -a Finder ./'
alias qfind="find . -name "
alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
alias numFiles='echo $(ls -1 | wc -l)'
alias c='clear'
alias h='history'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
