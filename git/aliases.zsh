# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
alias git=hub

alias g='git'
alias gl='git pull --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcb='git copy-branch-name'
alias gbr='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gcr='git create-branch'
alias gdel='git delete-branch'
