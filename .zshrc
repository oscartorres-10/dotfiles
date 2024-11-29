# after bun installation: https://bun.sh/docs/installation
# add to ~/.zshrc
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# customizing with https://dev.to/cassidoo/customizing-my-zsh-prompt-3417

# loads Version Control System into my prompt
autoload -Uz vcs_info
precmd() { vcs_info }

# sets up the Git branch into my prompt, %b is the branch name variable
zstyle ':vcs_info:git:*' formats '%b '

# putting my prompt together
setopt PROMPT_SUBST
PROMPT='%F{green}%*%f %F{blue}%1d%f %F{red}${vcs_info_msg_0_}%f$ ' # https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html

alias tf='terraform'

