alias l='ls -CF'
alias la='ls -A'
alias ll='ls -Al'
alias ls='ls --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ag='ag --color-match "0;36"'
alias agn='ag --noheading --nobreak --color-match "0;36"'

alias rsyncp="rsync -avz --info=progress2"

alias gap='git add --patch'
alias gbv='git --no-pager branch -v'
alias gc='git commit'
alias gca='git commit --amend --no-edit'
alias gcam='git commit --amend'
alias gch='git checkout'
alias gcp='git cherry-pick'
alias gd='git diff'
alias gdc='git diff --cached'
alias gds='git --no-pager diff --stat'
alias gdjq='git-diff-jq'
alias gp='git push origin HEAD:refs/for/master'
alias gs='git status'
alias gri='git rebase -i HEAD~10'
alias grp='git restore --patch'
alias gwl='git worktree list'

alias tmuxa='tmux attach-session || tmux'

alias clearcache='sudo sh -c "echo 1 > /proc/sys/vm/drop_caches"'

alias start-dockerd='sudo nohup dockerd 2>&1 > /tmp/dockerd.log &'
