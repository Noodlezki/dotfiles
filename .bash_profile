##########
## PATH ##
##########
# Postgres binaries
export PATH="/Applications/Postgres.app/Contents/MacOS/bin:$PATH"
# MySQL binaries
export PATH="/usr/local/mysql/bin:$PATH"
# /usr/local/sbin for RabbitMQ
export PATH="/usr/local/sbin:$PATH"

#################
## ENVIRONMENT ##
#################
# Vim is my editor. I fucking love vim. No, really.
export EDITOR=vim
# Node.js configuration
export NODE_PATH=/usr/lib/node_modules
#export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

#############
## ALIASES ##
#############
# I never remember how to open finder from the terminal
alias finder='open'
# I never remember how to access the clipboard
alias clipboard='pbcopy'
# Use a colour terminal
alias ls='ls -G'
alias ll='ls -l'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
# Use macvim from the command line
alias mvim="open -a MacVim.app"
# Edit my crontable with Vim
alias crontab='VIM_CRONTAB=true crontab'
# Common git alias list
alias gs='git status -s'
alias gd='git diff'
alias ga='git add'
alias gcm='git commit -m'
alias gcam='git commit -a -m'
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"
alias tc='tmux new -s '
alias tt='tmux attach -t'


#########
## ETC ##
#########

# Git autocompletion script
GIT_SCRIPT=~/scripts/.git-completion.sh 
if [ -e $GIT_SCRIPT ] ; then
  source $GIT_SCRIPT
fi

# Fast searching for files
findext() {
  find . -name \*.$1
}

# Interact with Bash in Vim mode
set -o vi

# Use the Ubuntu default prompt
export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
# FYI: Old (boring) OS X prompt
#export PS1"=\h:\W \u\$ "


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
