# KQuickRC Installation Script
# Setup Functions
setasrootbase () {
  [ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
  mkdir /.quickrc-config
  mv ./quickrc.sh /.quickrc-config/quickrc.sh
  echo "sh /.quickrc-config/quickrc.sh" >> ~/.bashrc
}

setashomebase () {
  mkdir ~/.quickrc-config
  mv ./quickrc.sh ~/.quickrc.sh
  echo "sh ~/.quickrc.sh" >> ~/.bashrc
}

# Setup Root Base
if [ $# -gt 0 ]; then
  if [ "$1" = "-rb" || "$1" = "--root-base"]; then
    setashomebase
  elif [ "$1" = "-hb" || "$1" = "--home-base"]; then
    setashomebase
  fi
else
  echo "Would you like to add a root base? [Y/n]"
  read - p ": " answer
  if [ "$answer" = "y" || "$answer" = "Y" ]; then
    setashomebase
  else
    setashomebase
  fi
fi
