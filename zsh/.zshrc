export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="mortalscumbag"
plugins=(git)
source "$ZSH/oh-my-zsh.sh"
alias objdump='objdump -M intel'
bindkey -v
export PATH="$HOME/.local/bin:$PATH"
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
