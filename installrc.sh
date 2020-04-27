# KQuickRC Installation Script
# Setup Functions
root-base () {
  [ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
  mkdir /.quickrc-config
  mv ./quickrc.sh /.quickrc-config/quickrc.sh
  echo "sh /.quickrc-config/quickrc.sh" >> ~/.bashrc
}

home-base () {
  mkdir ~/.quickrc-config
  mv ./quickrc.sh ~/.quickrc.sh
  echo "sh ~/.quickrc.sh" >> ~/.bashrc
}

# Setup Root Base
if [ $# -gt 0 ]; then
  if [ "$1" = "-rb" || "$1" = "--root-base"]; then
    root-base
  elif [ "$1" = "-hb" || "$1" = "--home-base"]; then 
    home-base
  fi
else
  echo "Would you like to add a root base? [Y/n]"
  read -p ": " answer
  if [ "$answer" = "y" || "$answer" = "Y" ]; then
    root-base
  else
    home-base
  fi
fi
