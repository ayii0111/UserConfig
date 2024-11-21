source $HOME/.local/share/zinit/plugins/QuarticCat---zsh-smartcache/zsh-smartcache.plugin.zsh 2>/dev/null

# 進入終端時，回到上次離開時的目錄
[[ -f ~/.lastDir ]] && cd "$(<~/.lastDir)"
