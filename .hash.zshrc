# custom .hash.zshrc append after .zshrc
umask 022
alias l='ls -l'
alias ll='ls -lA'
alias la='ls -lah'
[ ZSH_THEME = "robbyrussell" ] && {
  PS1='${ret_status} %{$fg[cyan]%}%~%{$reset_color%} $(git_prompt_info)'
}
hash -d home=/mnt/d/linuxdir
