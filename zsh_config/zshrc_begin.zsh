# 進入終端時，回到上次離開時的目錄
[[ -f ~/.lastDir ]] && cd "$(<~/.lastDir)"
