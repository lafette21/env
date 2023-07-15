#!/usr/bin/env zsh

if [[ "$OSTYPE" == "linux-gnu"* ]]; then    # Arch and probably other distros
    source /usr/share/fzf/key-bindings.zsh
    source /usr/share/fzf/completion.zsh
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [[ "$OSTYPE" == "darwin"* ]]; then     # macOS
    source /usr/local/opt/fzf/shell/completion.zsh
    source /usr/local/opt/fzf/shell/key-bindings.zsh
    source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
    source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
else
    echo "This OS is not supported by the script! You should source these files by hand."
fi

source ~/env/cfg/zsh/aliases.zsh
source ~/env/cfg/zsh/variables.zsh
source ~/env/cfg/zsh/functions.zsh
