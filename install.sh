[ -f /etc/wsl.conf ] || {
  sudo cp $PWD/etc.wsl.conf /etc/wsl.conf
}
[ $(which zsh) == "" ] && {
  sudo apt-get install zsh
  zsh
  sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  echo source $PWD/zshrc >> ~/.zshrc
}
