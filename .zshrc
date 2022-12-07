export PATH="/usr/local/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"
export PATH=/usr/local/user_command:$PATH


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

# nnn setting
alias ncp="cat ${NNN_SEL:-${XDG_CONFIG_HOME:-$HOME/.config}/nnn/.selection} | tr '\0'"
[ -n "$NNNLVL" ] && PS1="N$NNNLVL $PS1"
if [ -f /usr/share/nnn/quitcd/quitcd.bash_zsh ]; then
    source /usr/share/nnn/quitcd/quitcd.bash_zsh
fi

# user custom alias
alias n3="nnn -de"
alias acf="at_coder_friends"
