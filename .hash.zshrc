# custom .hash.zshrc append after .zshrc
PATH=$PATH:/mnt/c/go/bin
[ -f ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ] || {
  git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
}
[ -f ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh ] && {
  source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
}
umask 022
alias l='ls -l'
alias ll='ls -lA'
alias la='ls -lah'
[ $ZSH_THEME = "robbyrussell" ] && {
  PS1='${ret_status} %{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info)'
}
__git_files () { 
    _wanted files expl 'local files' _files     
}

hash -d home=/mnt/d/linuxdir
