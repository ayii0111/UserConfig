# .zshrc 初始化末端設置
# 可以將一些套件安裝時，配置在 .zshrc 的末端代碼，移到這裡管理

# setopt配置（即 shell行為設定）
setopt interactivecomments # 可在shell對話中使用註解
setopt nonomatch           # 使用*而沒有匹配時，不會報錯
setopt EXTENDED_GLOB       # 啟用強化萬用字元

eval "$(lua $(brew --prefix z.lua)/share/z.lua/z.lua --init zsh)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH" # 好像與 java 有關，之後再刪除
# export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"
# export JAVA_HOME='/opt/homebrew/Cellar/openjdk/21.0.2/libexec/openjdk.jdk/Contents/Home'
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=~/.console-ninja/.bin:$PATH
export LS_COLORS="$(vivid generate catppuccin-frappe)"
export BAT_THEME="ansi"

# 歷史命令配置
# 抄來的，改天有再研究，再補上影片來源
# HISTSIZE=5000
# HISTFILE=~/.zsh_history
# SAVEHIST=$HISTSIZE
# HISTDUP=erase
# setopt appendhistory
# setopt sharehistory
# setopt hist_ignore_space
# setopt hist_ignore_all_dups
# setopt hist_save_no_dups
# setopt hist_ignore_dups
# setopt hist_find_no_dups

# oh-my-posh
# 套用了 pure 主題，且 pure 也有個人化修改
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/pure.omp.json)"

# pnpm
export PNPM_HOME="/Users/ayii/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion
# 在登入載入 .zshrc 時，先執行一次 nvm 自動載入專案 node 版本
zsh-defer -2 _loadNvmrc
