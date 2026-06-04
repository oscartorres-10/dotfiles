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
PROMPT='%F{green}%*%f %F{blue}%~%f %F{red}${vcs_info_msg_0_}%f$ ' # https://zsh.sourceforge.io/Doc/Release/Prompt-Expansion.html

alias tf='terraform'
alias kctl='kubectl'
alias p='pnpm'
alias g='git'

# add vim keybinds (instead of Emacs, I think)
# bindkey -v
export PATH="/opt/homebrew/opt/node@22/bin:$PATH"

# pnpm
export PNPM_HOME="/Users/oscartorres/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="$HOME/.local/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
