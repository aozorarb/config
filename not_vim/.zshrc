export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
export PATH=/usr/local/user_command:$PATH
path=(
    /usr/local/opt/coreutils/libexec/gnubin(N-/) # coreutils
    /usr/local/opt/ed/libexec/gnubin(N-/) # ed
    /usr/local/opt/findutils/libexec/gnubin(N-/) # findutils
    /usr/local/opt/gnu-sed/libexec/gnubin(N-/) # sed
    /usr/local/opt/gnu-tar/libexec/gnubin(N-/) # tar
    /usr/local/opt/grep/libexec/gnubin(N-/) # grep
    ${path}
)
manpath=(
    /usr/local/opt/coreutils/libexec/gnuman(N-/) # coreutils
    /usr/local/opt/ed/libexec/gnuman(N-/) # ed
    /usr/local/opt/findutils/libexec/gnuman(N-/) # findutils
    /usr/local/opt/gnu-sed/libexec/gnuman(N-/) # sed
    /usr/local/opt/gnu-tar/libexec/gnuman(N-/) # tar
    /usr/local/opt/grep/libexec/gnuman(N-/) # grep
    ${manpath}
)



eval "$(rbenv init -)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/aozora/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/aozora/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/aozora/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/aozora/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# history setting
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_verify
setopt hist_reduce_blanks
setopt hist_no_store
setopt hist_expand
bindkey '<C-P>' history-beginning-search-backward
bindkey '<C-N>' history-beginning-search-forward
function hist-all { history -E 1 }

# useful setting
set -o vi
export LESS='-R'
alias vi='vim --clean'
bindkey -e
setopt auto_cd
alias ...='cd ../..'
alias ....='cd ../../..'
setopt auto_pushd
setopt pushd_ignore_dups
setopt extended_glob

# user custom alias
alias ls="ls --color=always"
alias n3="nnn -de"
alias acf="at_coder_friends"
alias acft="at_coder_friends test-all"
alias acfs="at_coder_friends submit"
alias acfe="at_coder_friends setup"
alias lld="otool -L"
alias ls="/bin/ls -G"
alias ocaml="rlwrap ocaml"
alias gcc="/usr/bin/gcc"
alias g++="/usr/bin/c++"
alias clg="clang"
alias clg++"clang++"
# TeX Live
PATH=/usr/local/texlive/2023/bin/universal-darwin:$PATH
MANPATH=/usr/local/texlive/2023/texmf-dist/doc/man:$MANPATH
INFOPATH=/usr/local/texlive/2023/texmf-dist/doc/info:$INFOPATH

# Iterm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
