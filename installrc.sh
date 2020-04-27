# KQuickRC Installation Script
# Setup Root Base
if [ $# -gt 0 ]; then
  if [ "$1" = "-rb" || "$1" = "--root-base"]; then
    [ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"
    # More Scrpit
  elif [ "$1" = "-hb" || "$1" = "--home-base"]; then 
    # More Script
  fi
else
  echo "Would you like to add a root base? [Y/n]"
  read -p ": " answer
  if [ "$answer" = "y" || "$answer" = "Y" ]; then
    # More Script
  else
    echo "Running without root (Home base setup)"
    mv ./quickrc.sh ~/.quickrc.sh
    echo "sh ~/.quickrc.sh" >> ~/.bashrc
  fi
fi
