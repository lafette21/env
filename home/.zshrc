source "${HOME}/env/load.zsh"

alias btop="bpytop"
alias python="python3"
alias nv="nvim"

# Inline editor
autoload edit-command-line; zle -N edit-command-line

bindkey -e
bindkey -s '^o' 'lfcd\n'
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '\e[H'    beginning-of-line
bindkey '\e[F'    end-of-line
bindkey "\e[3~"   delete-char
bindkey '^e'      edit-command-line

export LANG=C.UTF-8
export LC_ALL=C.UTF-8
export EDITOR='nvim'
export HISTFILE=~/.histfile
export HISTSIZE=10000
export PS1='%F{34}%n%m %F{33}%c%F{white} % '
export SAVEHIST=10000
export TERM='xterm-256color'

setopt nonomatch
setopt hist_ignore_all_dups
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data
