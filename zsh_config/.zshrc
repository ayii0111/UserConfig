# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"

source ~/UserConfig/zsh_config/zshrc_begin.zsh
source ~/UserConfig/zsh_config/zinit.zsh
source ~/UserConfig/zsh_config/alias_cmd.zsh
source ~/UserConfig/zsh_config/alias_script.zsh
source ~/UserConfig/zsh_config/alias_git.zsh
source ~/UserConfig/zsh_config/zshrc_end.zsh

PATH=~/.console-ninja/.bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
