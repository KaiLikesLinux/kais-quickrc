# KQuickRC Installation Script
[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

# Move this:
mv ./quickrc.sh ~/.quickrc.sh
echo "sh ~/.quickrc.sh" >> ~/.bashrc

# Setup Root Base
if [ $# -gt 0 ]; then
  if [ "$1" = "-rb" ||"$1" = "--root-base"]; then
    # More Scrpit
  elif
    # More Script
  fi
else
  # Script Stuff Here
fi
