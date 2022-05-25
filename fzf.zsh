# Setup fzf
# ---------
#

machine=$(uname)
if [[ $machine = "Darwin" ]]; then
    echo "This is a mac"
    if [[ ! "$PATH" == */usr/local/opt/fzf/bin* ]]; then
        export PATH="${PATH:+${PATH}:}/usr/local/opt/fzf/bin"
        # Key bindings
        source "/usr/local/opt/fzf/shell/key-bindings.zsh"
        # Auto completion
        [[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null
    fi
fi
if [[ $machine = "Linux" ]]; then
    source /usr/share/fzf/key-bindings.zsh
else
    echo "Not sure what machine this is"
fi
