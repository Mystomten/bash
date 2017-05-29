parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1='\[\033[1m\033[0;36m\][\t] \[\033[1m\033[0;33m\]\u \[\033[1m\033[0;35m\]\w\[\033[0m\]\[\033[32m\]$(parse_git_branch)\[\033[00m\] '
export PATH=/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:~/bin:$PATH
export EDITOR='subl -w'

# Git stuff
alias gs='git status'
alias ga='git add'
alias go='git checkout'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias gfp='git fetch -p'

# Moving around
alias cdoc='cd ~/Documents'
alias cdw='cd ~/Documents/WORK'
alias cdan='cd ~/AndroidStudioProjects'
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
alias myip='curl ip.appspot.com'

# Apps
alias sbl='subl'
