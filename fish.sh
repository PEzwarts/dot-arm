if [[ "$(echo $SHELL)" == "/bin/bash" ]]; then
  if [[ $(cat /etc/shells | grep "/usr/bin/fish") ]]; then
    echo /usr/bin/fish | sudo tee -a /etc/shells
  fi

  chsh -s /usr/bin/fish
fi
